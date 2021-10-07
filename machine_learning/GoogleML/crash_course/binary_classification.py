"""Demonstrating the effect of class threshold on precision and recall metrics
for a binary classification model. California housing dataset was used."""

import os
from typing import List, Dict, Any

import pandas as pd
import numpy as np
import tensorflow as tf
import matplotlib.pyplot as plt
from scipy import stats
from sklearn.model_selection import train_test_split

from dotenv import find_dotenv, load_dotenv

load_dotenv(find_dotenv())
pd.options.display.float_format = '{:.1f}'.format
tf.keras.backend.set_floatx('float32')

DATASET_PATH = os.getenv('CALIFORNIA_HOUSING_CSV')
TARGET_THRESHOLD = 265000 # convert prices into binary labels either 0 or 1
EPOCHS = 15
LEARNING_RATE = 0.001
BATCH_SIZE = 128
PREDICT_THRESHOLD = 0.35


def create_model(lr: float, threshold_for_predict: float) -> tf.keras.Model:
    """Creates a simple model for use in binary classification."""
    input_layer = tf.keras.Input(shape=(2,), name = 'input_layer')
    output_layer = tf.keras.layers.Dense(1, activation = tf.sigmoid)(input_layer)
    
    model = tf.keras.Model(inputs = input_layer, outputs = output_layer)
    model.compile(
        optimizer = tf.keras.optimizers.RMSprop(learning_rate = lr),
        loss = tf.keras.losses.BinaryCrossentropy(),
        metrics = [tf.metrics.BinaryAccuracy(threshold = threshold_for_predict)]
    )

    return model

def train_model(model: tf.keras.Model, x: np.ndarray, y : np.ndarray,
        epochs: int, batch_size : int) -> tf.keras.callbacks.History:
    """Trains the given binary classification model."""
    history = model.fit(x = x, y = y, batch_size = batch_size, 
        epochs = epochs, validation_split = 0.2, verbose = 0
    )

    return history

def plot_loss_curve(history: Dict) -> None:
    """
    Takes a fitted keras model object, draws the train and validation losses
    as well as accuracy values.
    """
    epochs = history.epoch
    loss_train = history.history.get('loss')
    loss_validation = history.history.get('val_loss')
    accuracy_train = history.history.get('binary_accuracy')
    accuracy_val = history.history.get('val_binary_accuracy')

    plt.figure(figsize = (12, 6))
    plt.suptitle('Classifier Metrics')

    plt.subplot(1,2,1)
    plt.xlabel('Epoch')
    plt.ylabel('Loss')
    plt.plot(epochs, loss_train, label = 'Train loss')
    plt.plot(epochs, loss_validation, label = 'Validation loss')
    plt.legend()
    plt.grid()

    plt.subplot(1,2,2)
    plt.xlabel('Epoch')
    plt.ylabel('Accuracy')
    plt.plot(epochs, accuracy_train, label = 'Train Accuracy')
    plt.plot(epochs, accuracy_val, label = 'Validation Accuracy')
    plt.legend()
    plt.grid()

    plt.show()


if __name__ == "__main__":
    housing_df = pd.read_csv(DATASET_PATH,
        usecols = lambda col: col != 'ocean_proximity'
    )
    features = housing_df.loc[:, ['median_income', 'total_rooms']]
    features = stats.zscore(features)
    target = housing_df['median_house_value'].\
            apply(lambda price: 1 if price > TARGET_THRESHOLD else 0).to_numpy()
    features_train, features_test, target_train, target_test = \
        train_test_split(features, target, stratify = target, random_state = 12)
    
    labels_train, count_train = np.unique(target_train, return_counts = True)
    labels_test, count_test = np.unique(target_test, return_counts = True)
    print(features_train.shape, target_train.shape)
    print(dict(zip(labels_train, count_train)))
    print(dict(zip(labels_test, count_test)))
    
    target_train = np.reshape(target_train, (-1, 1))
    target_test = np.reshape(target_test, (-1, 1))

    classifier = create_model(lr = LEARNING_RATE, 
        threshold_for_predict = PREDICT_THRESHOLD
    )
    hist = train_model(classifier, features_train, target_train, EPOCHS,
            BATCH_SIZE
    )
    plot_loss_curve(hist)
    print(classifier.evaluate(x = features_test, y = target_test, 
        batch_size = BATCH_SIZE)
    )
