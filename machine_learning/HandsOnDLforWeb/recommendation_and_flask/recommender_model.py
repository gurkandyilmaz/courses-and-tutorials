import pickle
import re
import string
import time
from typing import List, Any, Tuple

import numpy as np
import pandas as pd
import nltk
from nltk.corpus import stopwords
from nltk.tokenize import WordPunctTokenizer
from sklearn.model_selection import train_test_split
from sklearn.feature_extraction.text import TfidfVectorizer

from configs import AMAZON_REVIEWS_CSV
from Logger import get_logger

LOGGER = get_logger(__name__)
STOPWORDS = set(stopwords.words('english'))

def clean_text(line: str) -> str:
    line = line.translate(string.punctuation)
    line = line.lower().split()
    line = [word for word in line if not word in STOPWORDS and len(word)>2]
    line = ' '.join(line)
    return re.sub(r"[^A-Za-z0-9^.,!\/'+-=]", " ", line)

def matrix_factorization(Ratings: pd.DataFrame, U: pd.DataFrame, P: pd.DataFrame,
        steps: int = 1, 
        gamma: float = 0.001, 
        theta: float = 0.02, 
        tol: float = 0.001) -> Tuple[pd.DataFrame, pd.DataFrame]:

    for step in range(steps):
        try:
            for user in Ratings.index:
                for product in Ratings.columns:
                    if Ratings.loc[user, product] > 0:
                        pred =  np.dot(U.loc[user], P.loc[product])
                        error = Ratings.loc[user, product] - pred
                        U.loc[user] += gamma*(error*P.loc[product] - theta*U.loc[user])
                        P.loc[product] += gamma*(error*U.loc[user] - theta*P.loc[product])
                e = 0
            for user in Ratings.index:
                for product in Ratings.columns:
                    if Ratings.loc[user,product] > 0:
                        dot = np.dot(U.loc[user], P.loc[product])
                        power_r = pow(Ratings.loc[user,product] - dot, 2)
                        power_u = pow(np.linalg.norm(U.loc[user]), 2)
                        power_p = pow(np.linalg.norm(P.loc[product]), 2)
                        e += power_r - theta*(power_u + power_p)
                        if e < tol:
                            break
        except:
            LOGGER.error('An error occured. ', exc_info=True)

    LOGGER.debug(f'factorization done. step: {step}, error: {error}, e: {e:7f}')
    return U, P

def save_as_pickle(path: str, obj: Any) -> None:
    with open(path, 'wb') as f:
        pickle.dump(obj, f)

    LOGGER.info(f'Pickle file written in {path}')

def load_pickle(path: str) -> Any:
    with open(path, 'rb') as f:
        model = pickle.load(f)
    LOGGER.info(f'{model} loaded.')
    return model


if __name__ == '__main__':

    df = pd.read_csv(AMAZON_REVIEWS_CSV, encoding = 'ISO-8859-1', nrows = 10000,
                usecols = ['ProductId', 'UserId', 'Score', 'Text'])
    LOGGER.debug(f'Dataframe read with having shape: {df.shape} columns: {df.columns}')

    t0 = time.time()
    df.loc[:, 'Text'] = df.loc[:, 'Text'].apply(clean_text)
    t1 = time.time()

    LOGGER.info(f'df["Text"].apply(clean_text) elapsed time: {t1-t0:.5f} sec.')

    x_train, x_test, y_train, y_test = train_test_split(df['Text'], df['ProductId'],
                                                    test_size=0.25, 
                                                    random_state=12)

    user_df = df.loc[:, ['UserId','Text']].copy()
    user_df = user_df.groupby(by='UserId').agg({'Text': ' '.join})
    product_df = df.loc[:, ['ProductId', 'Text']].copy()
    product_df = product_df.groupby(by='ProductId').agg({'Text': ' '.join})

    LOGGER.debug(f'user_df shape: {user_df.shape} columns: {user_df.columns}')
    LOGGER.debug(f'product_df shape: {product_df.shape} columns: {product_df.columns}')

    user_vectorizer = TfidfVectorizer(tokenizer=WordPunctTokenizer().tokenize,
                                max_features = 1000)
    user_vectors = user_vectorizer.fit_transform(user_df['Text'])
    LOGGER.debug(f'user tfidf vectors having shape: {user_vectors.shape}')

    product_vectorizer = TfidfVectorizer(tokenizer=WordPunctTokenizer().tokenize,
                                max_features = 1000)
    product_vectors = product_vectorizer.fit_transform(product_df['Text'])
    LOGGER.debug(f'product tfidf vectors having shape: {product_vectors.shape}')

    user_ratings = pd.pivot_table(df, values = 'Score', index = ['UserId'], 
                            columns = ['ProductId'])
    LOGGER.info(f'user_ratings shape: {user_ratings.shape} type: {type(user_ratings)}')

    U = pd.DataFrame(user_vectors.toarray(), index = user_df.index, 
                columns = user_vectorizer.get_feature_names())

    P = pd.DataFrame(product_vectors.toarray(), index = product_df.index, 
                columns = product_vectorizer.get_feature_names())

    t0 = time.time()
    U, P = matrix_factorization(user_ratings, U, P)
    t1 = time.time()
    LOGGER.info(f'matrix_factorization done in {t1-t0:.5f} secs.')

    save_as_pickle('./pickled_models/user_weights.pkl', U)
    save_as_pickle('./pickled_models/product_weights.pkl', P)
    save_as_pickle('./pickled_models/user_vectorizer.pkl', user_vectorizer)
