"""A CNN model trained on the MNIST dataset that will be used in a flask app."""

import logging 

import numpy as np
from tensorflow import keras
from tensorflow.keras import backend as K
from tensorflow.keras import Input
from tensorflow.keras.layers import Dense, Dropout, Flatten 
from tensorflow.keras.layers import Conv2D, MaxPooling2D, BatchNormalization
from tensorflow.keras.models import Sequential

from prepate_data import loadImageFile, loadLabelFile
from config import MNIST
from custom_logger import get_logger

LOGGER = get_logger(__name__)
LOGGER.info('Model logger started successfully.')

def cnn_model() -> keras.Model:
    input_layer = Input(shape=(28,28,1), name='input_layer')
    conv_1 = Conv2D(16, (2, 2), activation='relu', name='Conv_1')(input_layer)
    batch_norm_1 = BatchNormalization(axis=-1, name='BatchNorm_1')(conv_1)
    conv_2 = Conv2D(16, (2, 2), activation='relu', name='Conv_2')(batch_norm_1)
    pooling_1 = MaxPooling2D(pool_size=(2, 2), name='Pooling_1')(conv_2)
    batch_norm_2 = BatchNormalization(axis=-1, name='BatchNorm_2')(pooling_1)
    conv_3 = Conv2D(16, (2, 2), activation='relu', name='Conv_3')(batch_norm_2)
    batch_norm_3 = BatchNormalization(axis=-1, name='BatchNorm_3')(conv_3)
    conv_4 = Conv2D(16, (2, 2), activation='relu', name='Conv_4')(batch_norm_3)
    pooling_2 = MaxPooling2D(pool_size=(2, 2), name='Pooling_2')(conv_4)
    flatten = Flatten()(pooling_2)
    batch_norm_4 = BatchNormalization(axis=-1, name='BatchNorm_4')(flatten)
    dense_1 = Dense(32, activation='relu', name='Dense_1')(batch_norm_4)
    batch_norm_5 = BatchNormalization(axis=-1, name='BatchNorm_5')(dense_1)
    dropout_1 = Dropout(0.4)(batch_norm_5)
    out = Dense(10, activation='softmax')(dropout_1)

    model = keras.Model(inputs=input_layer, outputs=out, name='cnn_model')
    return model

if __name__ == "__main__":

    train_image_file = MNIST.TRAIN_DATA_FILE
    train_label_file = MNIST.TRAIN_LABELS_FILE
    test_image_file = MNIST.TEST_DATA_FILE
    test_label_file = MNIST.TEST_LABELS_FILE

    train_data = loadImageFile(train_image_file)
    train_data = np.reshape(train_data, (train_data.shape[0], 28, 28, 1)) #required by keras
    train_labels = loadLabelFile(train_label_file)
    test_data = loadImageFile(test_image_file)
    test_data = np.reshape(test_data, (test_data.shape[0], 28, 28, 1)) #required by keras
    test_labels = loadLabelFile(test_label_file)

    LOGGER.info(f'Train data shape: {train_data.shape}')
    LOGGER.info(f'Train labels shape: {train_labels.shape}')
    LOGGER.info(f'Test data shape: {test_data.shape}')
    LOGGER.info(f'Test labels shape: {test_labels.shape}')

    model = cnn_model()
    loss = keras.losses.CategoricalCrossentropy()
    optimizer = keras.optimizers.Adam()

    model.compile(
        optimizer=optimizer,
        loss=loss,
        metrics=['accuracy']
    )

    model.summary()

    LOGGER.info('Model compiled.')
    try:
        history = model.fit(
            x=train_data,
            y=train_labels,
            batch_size=256,
            epochs=5,
            validation_split=0.2,
        )
    except ValueError:
        LOGGER.error('Shape mismatch. ', exc_info=True)
    except KeyboardInterrupt:
        LOGGER.info('Train interrupted from the keyboard.')

    LOGGER.debug(f'Model fitted with params: {model.get_config()}')

    test_score = model.evaluate(test_data, test_labels)
    LOGGER.debug(f'Evaluation Score for the model: {test_score}')

    model.save(MNIST.SAVED_MODELS / 'cnn_model.model')
    LOGGER.debug(f'Model saved into {MNIST.SAVED_MODELS}')
    # alternative saving
    model_json = model.to_json()
    with open(MNIST.SAVED_MODELS / 'model.json', 'w') as f:
        f.write(model_json)
    model.save_weights(str(MNIST.SAVED_MODELS/'cnn_weights.h5'))
    LOGGER.info('Model structure and weights also saved.') 
    test_model = keras.models.load_model(MNIST.SAVED_MODELS / 'cnn_model.model')
    LOGGER.info('Model loaded.')
    del test_model
    #keras.utils.plot_model(model, show_shapes=True)

