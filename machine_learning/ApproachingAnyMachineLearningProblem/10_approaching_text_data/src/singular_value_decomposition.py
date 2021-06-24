"""This file is used to fit SVD model on a tf-idf transformed data."""

import pandas as pd
from nltk.tokenize import word_tokenize
from sklearn import decomposition
from sklearn.feature_extraction.text import TfidfVectorizer

import re, string

import config

def clean_text(sentence):
    sentence = " ".join(sentence.lower().split())
    sentence = re.sub(f'[{re.escape(string.punctuation)}]', '', sentence)
    
    return sentence

def train():
    corpus = pd.read_csv(config.INPUT_DIR / config.TRAIN_FILE, nrows=5000)
    corpus.loc[:, "review"] = corpus["review"].apply(clean_text)
    corpus = corpus["review"].values

    tfidf = TfidfVectorizer(tokenizer=word_tokenize, token_pattern=None)
    tfidf.fit(corpus)

    corpus_transformed = tfidf.transform(corpus)
    svd = decomposition.TruncatedSVD(n_components=10)
    corpus_svd = svd.fit(corpus_transformed)

    sample_idx = 0
    feature_scores = dict(zip(tfidf.get_feature_names(), corpus_svd.components_[sample_idx]))

    N = 5
    print(sorted(feature_scores, key=feature_scores.get, reverse=True)[:N])


if __name__ == "__main__":
    train()

