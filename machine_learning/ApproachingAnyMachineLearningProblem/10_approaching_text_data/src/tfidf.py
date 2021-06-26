"""This file trains a classification model on a corpus obtained from tf-idf vectors."""

from time import time
import pandas as pd
import numpy as np
import joblib
from sklearn import naive_bayes
from sklearn import linear_model, metrics
from sklearn.feature_extraction.text import TfidfVectorizer
from nltk.tokenize import word_tokenize
from nltk.stem.snowball import SnowballStemmer

import config

def stem_sentence(sentence):
    transformed_tokens = []
    stemmer = SnowballStemmer(language="english")
    for word in sentence.lower().split():
        transformed_tokens.append(stemmer.stem(word))
    return " ".join(transformed_tokens)


def train(fold_id = 0, verbose = False):
    """Trains the classifier once by taking the fold_id for validation and the remaining folds for training."""
    df = pd.read_csv(config.INPUT_DIR / config.TRAIN_FILE)
    
    df["review"] = df["review"].apply(stem_sentence)

    df_train = df.loc[df["folds"] != fold_id, :].reset_index(drop=True)
    df_validation = df.loc[df["folds"] == fold_id, :].reset_index(drop=True)

    tfidf_vec = TfidfVectorizer(tokenizer=word_tokenize, token_pattern=None, ngram_range=(1,1))
    
    t0 = time()
    tfidf_vec.fit(df_train["review"])
    joblib.dump(tfidf_vec, config.SAVED_MODELS_DIR / "tfidf_vectorizer.pkl")
    t1 = time()
    
    features_train = tfidf_vec.transform(df_train["review"])
    features_validation = tfidf_vec.transform(df_validation["review"])
    t2 = time()

    #clf = linear_model.LogisticRegression()
    clf = naive_bayes.MultinomialNB()
    clf.fit(features_train, df_train["sentiment"])
    joblib.dump(clf, config.SAVED_MODELS_DIR / "classifier_model.pkl")
    t3 = time()

    preds = clf.predict(features_validation)
    acc = metrics.accuracy_score(df_validation["sentiment"], preds)
    prec = metrics.precision_score(df_validation["sentiment"], preds)

    print(f"Accuracy: {np.round(acc,3)}\t Precision: {np.round(prec, 3)}")

    if verbose:
        print(f"TfidfVectorizer fitted in {int(t1 - t0)} seconds.")
        print(f"TfidfVectorizer vocabulary length: {len(tfidf_vec.vocabulary_)}")
        print(f"Vectorizer transformed train and validation data in {int(t2 - t1)} seconds.")
        print(f"Model fitted in {int(t3 - t2)} seconds.")
        
if __name__ == "__main__":
    train(fold_id=1, verbose=True)



