"""This file is used to train a classification model on word vectors taken from fasttext."""

import io
import pandas as pd
import numpy as np

from nltk.tokenize import word_tokenize
from sklearn import linear_model
from sklearn import metrics
from sklearn import model_selection
from sklearn.feature_extraction.text import TfidfVectorizer

import config

def load_vectors(fname):
    # Source: https://fasttext.cc/docs/en/english-vectors.html
    fin = io.open(fname, "r", encoding="utf-8", newline="\n", errors="ignore")

    n, d = map(int, fin.readline().split())
    data = dict()
    for line in fin:
        tokens = line.rstrip().split(" ")
        data[tokens[0]] = list(map(float, tokens[1:]))

    return data


def sentence_to_vector(sentence, embedding_dict, stop_words, tokenizer):
    words = str(sentence).lower()
    words = tokenizer(words)
    words = [word for word in words if word not in stop_words]
    words = [word for word in words if word.isalpha()]

    M = []
    for w in words:
        if w in embedding_dict:
            M.append(embedding_dict[w])

    if len(M) == 0:
        return np.zeros(300)

    v = np.array(M).sum(axis=0)
    
    return v / (np.sqrt(v**2).sum(axis=0))


def train():
    df = pd.read_csv(config.INPUT_DIR / config.TRAIN_FILE, nrows=5000)
    
    print("Embeddings...")
    # Out of Memory...
    embeddings = load_vectors("../Downloads/wiki-news-300d-1M.vec")

    print("Sentence vectors...")
    vectors = []
    for review in df["reviews"].values:
        vectors.append(
                sentence_to_vector(
                    sentence=review,
                    embedding_dict = embeddings,
                    stop_words = [],
                    tokenizer = word_tokenize
                )
        )
    vectors = np.array(vectors)

    target = df["sentiment"].values

    kf = model_selection.StratifiedKFold(n_splits=3)
    for fold, (train_idx, val_idx) in enumerate(kf.split(X=dfvectors, y=target)):
        print("fFOLD: {fold}")
        xtrain = vectors[train_idx, :]
        target_train = target[train_idx]

        xval = vectors[val_idx, :]
        target_val = target[val_idx]

        model = linear_model.LogisticRegression()
        model.fit(xtrain, target_train)
        preds = model.predict(xval)
        acc = metrics.accuracy_score(target_val, preds)
        print(f"Accuracy: {np.round(acc, 3)}")
        print("--------------------")



if __name__ == "__main__":
    train()
