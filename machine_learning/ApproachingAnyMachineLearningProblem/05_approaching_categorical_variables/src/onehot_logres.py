"""Fit a logistic regression model on one-hot encoded input data."""

import pandas as pd
from sklearn import linear_model
from sklearn import metrics
from sklearn import preprocessing
from tqdm import tqdm

import config

def run(fold):
    df = pd.read_csv(config.TRAIN_FILE)
    feature_columns = [col for col in df.columns if col not in ["target", "folds"]]

    for feature_col in feature_columns:
        df.loc[:, feature_col] = df[feature_col].astype(str).fillna("NONE")

    df_train = df.loc[df["folds"] != fold, feature_columns]
    target_train = df.loc[df["folds"] != fold, "target"].values

    df_valid = df.loc[df["folds"] == fold, feature_columns]
    target_valid = df.loc[df["folds"] == fold, "target"].values

    onehot_encoder = preprocessing.OneHotEncoder(sparse=True)
    onehot_encoder.fit(df.loc[:, feature_columns])
    x_train = onehot_encoder.transform(df_train) 
    x_valid = onehot_encoder.transform(df_valid)

    logistic_reg = linear_model.LogisticRegression()
    logistic_reg.fit(x_train, target_train)
    preds_proba = logistic_reg.predict_proba(x_valid)[:,1]
    preds = logistic_reg.predict(x_valid)
    auc = metrics.roc_auc_score(target_valid, preds_proba)
    f1 = metrics.f1_score(target_valid, preds, average="macro")
    acc = metrics.accuracy_score(target_valid, preds)
    print(f"FOLD: {fold}\tAUC: {round(auc,3)}\tF1: {round(f1,3)}\tAccuracy: {round(acc,3)}")


if __name__ == "__main__":
    for f in tqdm(range(5)):
        run(fold = f)



