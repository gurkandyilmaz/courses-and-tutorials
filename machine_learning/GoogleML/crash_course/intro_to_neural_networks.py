"""Implements a linear model and examines the effects of different
regularization methods such as L1, L2, dropout."""

import os 
from typing import List, Dict, Any, Tuple

import pandas as pd
import numpy as np
import tensorflow as tf
import matplotlib.pyplot as plt
from scipy import stats
from sklearn.model_selection import train_test_split

from dotenv import find_dotenv, load_dotenv

load_dotenv(find_dotenv())
tf.keras.backend.set_floatx('float32')
pd.options.display.float_format = '{:.1f}'.format

DATASET_PATH = os.getenv('CALIFORNIA_HOUSING_CSV')
SELECTED_FEATURES = ['median_income', 'population']
LABEL_NAME = 'median_house_value'

EPOCHS = 15
LEARNING_RATE = 0.005
BATCH_SIZE = 64

def create_feature_layer(
        features: List[str]
    )-> Tuple[dict, tf.keras.layers.DenseFeatures]:
    """Creates a feature layer combining the given features """
    feature_list = []
    inputs = {}
    for feature in features:
        layer = tf.feature_column.numeric_column(feature)
        feature_list.append(layer)
        inputs[feature] = tf.keras.Input(shape = (1,), name = feature)

    return inputs, feature_list


def create_model(lr: float) -> tf.keras.Model:
    inputs, feature_list = create_feature_layer(features = SELECTED_FEATURES)
    feature_layer = tf.keras.layers.DenseFeatures(feature_list)
    feature_layer_out = feature_layer(inputs)
     
    hidden_1 = tf.keras.layers.Dense(
            units = 20,
            activation = 'relu',
            kernel_regularizer = tf.keras.regularizers.l2(l = 0.02),
            name = 'hidden_1')(feature_layer_out)

    hidden_2 = tf.keras.layers.Dense(
            units = 10,
            activation = 'relu',
            kernel_regularizer = tf.keras.regularizers.l2(l = 0.02),
            name = 'hidden_2')(hidden_1)

    out = tf.keras.layers.Dense(units = 1, name = 'output_layer')(hidden_2)

    model = tf.keras.Model(
            inputs = [i for i in inputs.values()],
            outputs = [out]
    )

    model.compile(
        optimizer = tf.keras.optimizers.RMSprop(learning_rate = lr),
        loss = tf.keras.losses.MeanSquaredError(),
        metrics = [tf.metrics.RootMeanSquaredError()]
    )

    return model

def train_model(model, dataset, epochs, batch_size, label_name):
    features = {name: np.array(value) for name, value in dataset.items()}
    label = np.array(features.pop(label_name))
    history = model.fit(
        x = features, y = label, epochs = epochs, batch_size = batch_size,
        validation_split = 0.2, shuffle = True
    )

    return history

def plot_loss_curves(hist: tf.keras.callbacks.History) -> None:
    epochs = hist.epoch
    loss_train = hist.history.get('loss')
    loss_validation = hist.history.get('val_loss')

    plt.figure()
    plt.title('Losses')
    plt.xlabel('Epochs')
    plt.ylabel('MSE')
    plt.plot(epochs, loss_train, label = 'Train')
    plt.plot(epochs, loss_validation, label = 'Validation')
    plt.legend()
    plt.show()


if __name__ == "__main__":
    housing_df = pd.read_csv(
        DATASET_PATH, usecols = lambda col: col != 'ocean_proximity'
    )
    
    housing_df_normalized = housing_df.apply(stats.zscore)
    housing_df_normalized = housing_df_normalized.sample(frac = 1.0)
    housing_df_normalized.dropna(subset = SELECTED_FEATURES, inplace = True)
    train_df = housing_df_normalized.iloc[:16000, :]
    test_df = housing_df_normalized.iloc[16000:, :]
    model = create_model(lr = LEARNING_RATE)
    history = train_model(model, train_df, EPOCHS, BATCH_SIZE, LABEL_NAME)
    plot_loss_curves(history)
    
    #tf.keras.utils.plot_model(
    #    model, to_file = 'media/intro_nn.png', show_shapes = True
    #)









