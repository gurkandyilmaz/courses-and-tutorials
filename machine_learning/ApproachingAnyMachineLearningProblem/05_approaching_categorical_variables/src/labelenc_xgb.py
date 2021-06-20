"""Fit a xgboost classifier model on the label encoded input data."""

import itertools

import pandas as pd
import xgboost
from sklearn import metrics
from sklearn import preprocessing
from tqdm import tqdm

import config

def feature_engineering(dataframe, categoric_cols):
    """Create new columns taking the combinations of the available columns."""
    combinations = list(itertools.combinations(categoric_cols, 2))
    for c1, c2 in combinations:
        dataframe.loc[:, c1+"_"+c2] = dataframe[c1].astype(str) + "_" + dataframe[c2].astype(str)
    
    return dataframe

def run(fold):
    df = pd.read_csv(config.TRAIN_FILE)
    feature_columns = [col for col in df.columns if col not in ["target", "folds"]]
    
    df = feature_engineering(dataframe=df, categoric_cols=feature_columns)
    print(df.shape)
    for feature_col in feature_columns:
        df.loc[:, feature_col] = df[feature_col].astype(str).fillna("NONE")
        label_encoder = preprocessing.LabelEncoder()
        label_encoder.fit(df[feature_col])
        df.loc[:, feature_col] = label_encoder.transform(df[feature_col])

    x_train = df.loc[df["folds"] != fold, feature_columns].values
    target_train = df.loc[df["folds"] != fold, "target"].values
    
    x_valid = df.loc[df["folds"] == fold, feature_columns].values
    target_valid = df.loc[df["folds"] == fold, "target"].values
    
    model = xgboost.XGBClassifier(n_jobs=-1)
    model.fit(x_train, target_train)
    preds_proba = model.predict_proba(x_valid)[:,1]
    preds = model.predict(x_valid)
    auc = metrics.roc_auc_score(target_valid, preds_proba)
    f1 = metrics.f1_score(target_valid, preds, average="macro")
    acc = metrics.accuracy_score(target_valid, preds)
    print(f"FOLD: {fold}\tAUC: {round(auc,3)}\tF1: {round(f1,3)}\tAccuracy: {round(acc,3)}")

if __name__ == "__main__":
    for f in tqdm(range(5)):
        run(fold = f)

