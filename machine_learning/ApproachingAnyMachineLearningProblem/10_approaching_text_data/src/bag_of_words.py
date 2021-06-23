"""This file trains a classification model on a corpus obtained from bag of words method."""

import pandas as pd
import numpy as np
from sklearn import naive_bayes
from sklearn import model_selection, linear_model, metrics
from sklearn.feature_extraction.text import CountVectorizer
from nltk.tokenize import word_tokenize
from time import time

import config


def train(fold_id = 0, verbose = False):
    """Trains the classifier once by taking the fold_id for validation and the remaining folds for training."""
    df = pd.read_csv(config.INPUT_DIR / config.TRAIN_FILE)
    df["sentiment"] = df["sentiment"].apply(lambda row: 1 if row=="positive" else 0)
    
    df["folds"] = -1

    df = df.sample(frac=1.0).reset_index(drop=True)
    features = df["review"]

    kf = model_selection.StratifiedKFold(n_splits=5)
    for fold, (train_idx, val_idx) in enumerate(kf.split(X=features, y=df["sentiment"])):
        df.loc[val_idx, "folds"] = fold

    df_train = df.loc[df["folds"] != fold_id, :].reset_index(drop=True)
    df_validation = df.loc[df["folds"] == fold_id, :].reset_index(drop=True)

    count_vec = CountVectorizer(tokenizer=word_tokenize, token_pattern=None)
    
    t0 = time()
    count_vec.fit(df_train["review"])
    t1 = time()
    
    features_train = count_vec.transform(df_train["review"])
    features_validation = count_vec.transform(df_validation["review"])
    t2 = time()

    #clf = linear_model.LogisticRegression()
    clf = naive_bayes.MultinomialNB()
    clf.fit(features_train, df_train["sentiment"])
    t3 = time()

    preds = clf.predict(features_validation)
    acc = metrics.accuracy_score(df_validation["sentiment"], preds)
    prec = metrics.precision_score(df_validation["sentiment"], preds)

    print(f"Accuracy: {np.round(acc,3)}\t Precision: {np.round(prec, 3)}")

    if verbose:
        print(f"Count Vectorizer fitted in {int(t1 - t0)} seconds.")
        print(f"Vectorizer transformed train and validation data in {int(t2 - t1)} seconds.")
        print(f"Model fitted in {int(t3 - t2)} seconds.")

if __name__ == "__main__":
    train(fold_id=0, verbose=True)



