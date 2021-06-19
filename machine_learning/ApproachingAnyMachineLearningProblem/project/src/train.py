import os
import joblib
import argparse

import pandas as pd
from sklearn import metrics
from sklearn import tree

import config
import model_dispatcher

def run(fold, model):
    dataframe = pd.read_csv(config.TRAINING_FILE)

    df_train = dataframe.loc[dataframe["folds"] != fold, :].reset_index(drop=True)
    df_valid = dataframe.loc[dataframe["folds"] == fold, :].reset_index(drop=True)
    
    x_train = df_train.drop(columns=["label"]).values
    y_train = df_train["label"].values

    x_valid = df_valid.drop(columns=["label"]).values
    y_valid = df_valid["label"]
    
    classifier = model_dispatcher.models[model]
    classifier.fit(x_train, y_train)
    preds = classifier.predict(x_valid)
    acc = metrics.accuracy_score(y_valid, preds)
    f1 = metrics.f1_score(y_valid, preds, average="macro")
    print(f"Fold={fold}\tAccuracy: {round(acc,3)}\tF1: {round(f1, 3)}")
    joblib.dump(classifier, os.path.join(config.MODEL_OUTPUT, f"decision_tree_{fold}.bin"))

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    
    parser.add_argument("--fold", type=int)
    parser.add_argument("--model", type=str)
    args = parser.parse_args()
    #print("Args: ", args)
    run(fold=args.fold, model=args.model)




