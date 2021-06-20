"""Fit a Random Forest regression model on label encoded input data."""

import pandas as pd
from sklearn import ensemble
from sklearn import metrics
from sklearn import preprocessing
from tqdm import tqdm

import config

def run(fold):
    df = pd.read_csv(config.TRAIN_FILE)
    feature_columns = [col for col in df.columns if col not in ["target", "folds"]]
    for feature_col in feature_columns:
        df.loc[:, feature_col] = df[feature_col].astype(str).fillna("NONE")
        label_encoder = preprocessing.LabelEncoder()
        label_encoder.fit(df[feature_col])
        df.loc[:, feature_col] = label_encoder.transform(df[feature_col])

    x_train = df.loc[df["folds"] != fold, feature_columns].values
    target_train = df.loc[df["folds"] != fold, "target"].values
    
    x_valid = df.loc[df["folds"] == fold, feature_columns].values
    target_valid = df.loc[df["folds"] == fold, "target"].values
    
    rf_regressor = ensemble.RandomForestClassifier(n_jobs=-1)
    rf_regressor.fit(x_train, target_train)
    preds_proba = rf_regressor.predict_proba(x_valid)[:,1]
    preds = rf_regressor.predict(x_valid)
    auc = metrics.roc_auc_score(target_valid, preds_proba)
    f1 = metrics.f1_score(target_valid, preds, average="macro")
    acc = metrics.accuracy_score(target_valid, preds)
    print(f"FOLD: {fold}\tAUC: {round(auc,3)}\tF1: {round(f1,3)}\tAccuracy: {round(acc,3)}")


if __name__ == "__main__":
    for f in tqdm(range(5)):
        run(fold = f)

