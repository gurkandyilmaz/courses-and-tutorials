"""Feature crosses on California housing dataset."""

import os
import pandas as pd
import numpy as np
import tensorflow as tf
import matplotlib.pyplot as plt

from typing import List, Dict, Any
from dotenv import find_dotenv, load_dotenv

load_dotenv(find_dotenv())
pd.options.display.float_format = "{:.1f}".format
tf.keras.backend.set_floatx('float32')

SCALING_FACTOR = 1000
TARGET_NAME = 'median_house_value'
FEATURE_LIST = ['latitude', 'longitude']
EPOCHS = 50
LEARNING_RATE = 0.05
BATCH_SIZE = 128


def feature_processing(features: List) -> Any:
    """Helper function for create model. Creates different combinations of features."""
    feature_cols = []
    input_layers = {}
    for col in features:
        feature_cols.append(tf.feature_column.numeric_column(col))
        input_layers[col] = tf.keras.Input(shape=(1, ), name = col)
    
    return feature_cols, input_layers


def feature_bucketized(features: List, data: pd.DataFrame) -> Any:
    """Helper function for create model. Creates bucketized features."""
    resolution = 1.0
    feature_cols = []
    input_layers = {}
    for col in features:
        feat = tf.feature_column.numeric_column(col)
        feat_boundaries = list(np.arange(
            int(min(data[col])), int(max(data[col])), resolution
        ))
        feat = tf.feature_column.bucketized_column(feat, feat_boundaries)
        
        feature_cols.append(feat)
        input_layers[col] = tf.keras.Input(shape=(1, ), name = col)

    return feature_cols, input_layers


def feature_crossing(features: List, data: pd.DataFrame) -> Any:
    """Helper function for create model. Creates crossed features of two."""
    feature_cols, input_layers = feature_bucketized(features, data)
    temp_features = [bucketized_feat for bucketized_feat in feature_cols]
    crossed = tf.feature_column.crossed_column(temp_features,
                                                hash_bucket_size = 100)
    crossed = tf.feature_column.indicator_column(crossed)
    
    feature_cols.clear()
    feature_cols.append(crossed)

    return feature_cols, input_layers
        

def create_model(lr: float, features: List) -> tf.keras.Model:
    """Creates a simple model by using the functioanl API of keras."""
    feature_cols, input_layers = feature_crossing(features, housing_df)
    feature_layer = tf.keras.layers.DenseFeatures(feature_cols)
    feature_layer_out = feature_layer(input_layers)
    output = tf.keras.layers.Dense(units = 1, name = 'output')(feature_layer_out)
    
    model = tf.keras.Model(
            inputs = [v for v in input_layers.values()], outputs = [output]
    )
    model.compile(
        optimizer = tf.keras.optimizers.RMSprop(learning_rate = lr),
        loss = tf.keras.losses.MeanSquaredError(),
        metrics = tf.keras.metrics.RootMeanSquaredError()
    )

    return model


def train_model(model: tf.keras.Model, dataset: pd.DataFrame, epochs: int,
                batch_size: int, target_name: str) -> tf.keras.callbacks.History:
    """Trains the given keras model with the given dataset."""
    features = {name:np.array(value) for name, value in dataset.items()}
    target = np.array(features.pop(target_name))
    history = model.fit(x = features, y = target, batch_size = batch_size, 
                        epochs = epochs, validation_split = 0.2, verbose = 1)
    
    return history


def plot_loss_curve(history: Dict) -> None:
    """Takes a fitted keras model object, draws the train and validation losses."""
    epochs = history.epoch
    rmse_train = history.history.get('root_mean_squared_error')
    rmse_validation = history.history.get('val_root_mean_squared_error')
    
    plt.figure()
    plt.xlabel('Epoch')
    plt.ylabel('Root Mean Squared Error')
    plt.plot(epochs, rmse_train, label = 'Train RMSE')
    plt.plot(epochs, rmse_validation, label = 'Validation RMSE')
    plt.legend()
    plt.show()


if __name__ == "__main__":
    housing_dataset_path = os.getenv('CALIFORNIA_HOUSING_CSV')
    housing_df = pd.read_csv(housing_dataset_path)
    housing_df['median_house_value'] /= SCALING_FACTOR
    
    regressor = create_model(lr = 0.001, features = FEATURE_LIST)
    #print(regressor.summary())
    history = train_model(
        regressor, 
        housing_df, 
        epochs = EPOCHS,
        batch_size = BATCH_SIZE,
        target_name = TARGET_NAME
    )
    
    plot_loss_curve(history)
    tf.keras.utils.plot_model(
        to_file = './media/2feature_cross_model.png',
        model = regressor,
        show_shapes = True
    )
