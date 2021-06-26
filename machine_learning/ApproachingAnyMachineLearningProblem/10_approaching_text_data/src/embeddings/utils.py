import io
import numpy as np
import pandas as pd
from sklearn import linear_model, metrics, model_selection
from sklearn.feature_extraction.text import TfidfVectorizer


def sentence_to_vec(sentence, embedding_dict={}, stop_words=[], tokenizer=None):
    words = str(sentence).lower()
    words = tokenizer(words)
    words = [w for w in words if w not in stop_words]
    words = [w for w in words if w.isalpha()]
    
    M = []
    for w in words:
        if w in embedding_dict:
            M.append(embedding_dict[w])
    
    if len(M) == 0:
        return np.zeros(300)
    
    v = np.array(M).sum(axis=0)
    
    return v / np.sqrt((v**2).sum())

def load_vectors(fname):
    # taken from: https://fasttext.cc/docs/en/english-vectors.html
    fin = io.open(fname,'r',encoding='utf-8',newline='\n',errors='ignore')
    n, d = map(int, fin.readline().split())
    data = {}
    for line in fin:
        tokens = line.rstrip().split(' ')
        data[tokens[0]] = list(map(float, tokens[1:]))
    
    return data

def create_folds(df, num_folds=5):
    df = df.sample(frac=1.0).reset_index(drop=True)
    df["folds"] = -1
    kf = model_selection.StratifiedKFold(n_splits=num_folds)
    for fold, (train_idx, val_idx) in enumerate(kf.split(X=df["review"], y=df["sentiment"])):
        df.loc[val_idx, "folds"] = fold

    return df