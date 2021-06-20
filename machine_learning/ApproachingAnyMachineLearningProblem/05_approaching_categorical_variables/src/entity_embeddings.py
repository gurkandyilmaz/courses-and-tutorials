import pandas as pd
import numpy as np
from sklearn import metrics, preprocessing

from tensorflow.keras import layers, utils, backend
from tensorflow.keras.models import Model

import config

def create_model(data, categorical_cols):
    """Returns a compiled tf.keras model for entity embedding."""
    inputs = []
    outputs = []

    for category in categorical_cols:
        num_unique = int(data[category].nunique())
        embedding_dim = int(min(np.ceil(num_unique/2), 50))
        input_layer = layers.Input(shape=(1,))
        embedding_layer = layers.Embedding(num_unique+1, embedding_dim, name=category)(input_layer)
        dropout_layer_1 = layers.SpatialDropout1D(0.3)(embedding_layer)
        output_layer = layers.Reshape(target_shape=(embedding_dim, ))(dropout_layer_1)

        inputs.append(input_layer)
        outputs.append(output_layer)

    x = layers.Concatenate()(outputs)
    x = layers.BatchNormalization()(x)

    x = layers.Dense(200, activation="relu")(x)
    x = layers.Dropout(0.3)(x)
    x = layers.BatchNormalization()(x)

    x = layers.Dense(100, activation="relu")(x)
    x = layers.Dropout(0.4)(x)
    x = layers.BatchNormalization()(x)

    y = layers.Dense(2, activation="softmax")(x)
    
    model = Model(inputs=inputs, outputs=y)

    model.compile(loss="binary_crossentropy", optimizer="adam")
    
    return model


def run(fold):
    df = pd.read_csv(config.TRAIN_FILE)
    
    features = [col for col in df.columns if col not in ["target","folds"]]

    for feature in features:
        df.loc[:, feature] = df[feature].astype(str).fillna("NONE")
        encoder = preprocessing.LabelEncoder()
        df.loc[:, feature] = encoder.fit_transform(df[feature])
    
    x_train = df.loc[df["folds"] != fold, features]
    x_valid = df.loc[df["folds"] == fold, features]
    y_train = df.loc[df["folds"] != fold, "target"].values
    y_valid = df.loc[df["folds"] == fold, "target"].values

    xtrain = [x_train[features].values[:, k] for k in range(len(features))]
    xvalid = [x_valid[features].values[:, k] for k in range(len(features))]
    y_train_cat = utils.to_categorical(y_train)
    y_valid_cat = utils.to_categorical(y_valid)
        
    model = create_model(df, features)
    history = model.fit(
            xtrain, 
            y_train_cat, 
            validation_data=(xvalid, y_valid_cat), 
            verbose=1, 
            batch_size=32,
            epochs=3
    )

    preds = model.predict(xvalid)[:,1]
    auc = metrics.roc_auc_score(y_valid, preds)
    print(f"FOLD: {fold}\t AUC: {round(auc,3)}")
    
    model.save(config.MODEL_DIR)
    backend.clear_session()

if __name__ == "__main__":
    run(fold=0)

