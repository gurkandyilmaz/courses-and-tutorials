import re
import string
import time

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

df = pd.read_csv(AMAZON_REVIEWS_CSV, encoding = 'ISO-8859-1', nrows = 10000,
                usecols = ['ProductId', 'UserId', 'Score', 'Text'])
print(df.head())
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



