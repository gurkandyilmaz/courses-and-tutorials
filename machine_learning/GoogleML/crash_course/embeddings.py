"""Implementation of a custom embedding layer to learn movie and user embeddings
on the movielens dataset. There will be 2 inputs to the model, one for the users
and one for the movies. The goal is to predict a single movie for a given user
and ratings data from that user."""

import os
from pathlib import Path
from typing import List, Tuple, Dict, Any

import pandas as pd
import numpy as np
import tensorflow as tf
import matplotlib.pyplot as plt

from dotenv import find_dotenv, load_dotenv

load_dotenv(find_dotenv())

MOVIELENS_DATA_DIR = Path(os.getenv('MOVIELENS_DIR'))
RATINGS_CSV = MOVIELENS_DATA_DIR / 'ratings.csv'

class MovieLensDataset:
    def __init__(self, df: pd.DataFrame, train_ratio: float):
        """
        Prepares the movielens dataset for training and testing.
        :param df: pandas datafram containing rating information.
        :param train_ratio: split ratio, between 0.0 and 1.0
        """
        self.df = df
        self.train_ratio = train_ratio
        self._user_to_idx = {}
        self._idx_to_user = {}
        self._movie_to_idx = {}
        self._idx_to_movie = {}
        self._num_users = 0
        self._num_movies = 0
        self._max_rating = max(self.df['rating'])
        self._min_rating = min(self.df['rating'])
    
    def prepare(self):
        """
        Returns the splitted datasets namely, feature_train, feature_test,
        target_train, target_test
        """
        user_ids = self.df['userId'].unique().tolist()
        movie_ids = self.df['movieId'].unique().tolist()

        self._num_users = len(user_ids)
        self._num_movies = len(movie_ids)
        self._user_to_idx = {user:idx for idx, user in enumerate(user_ids)}
        self._idx_to_user = {idx:user for idx, user in enumerate(user_ids)}
        self._movie_to_idx = {movie:idx for idx, movie in enumerate(movie_ids)}
        self._idx_to_movie = {idx:movie for idx, movie in enumerate(movie_ids)}

        self.df['userId'] = self.df['userId'].map(self._user_to_idx)
        self.df['movieId'] = self.df['movieId'].map(self._movie_to_idx)
        self.df['rating'] = self.df['rating'].astype(np.float32)
        
        self.df = self.df.sample(frac = 1.0, random_state = 12)
        self.df = self.df.reset_index(drop = True)

        x = self.df.loc[:, ['userId', 'movieId']].values
        y = self.df['rating'].apply(self._transform_rating).values
        
        train_idx = int(self.train_ratio * self.df.shape[0])

        return (x[:train_idx], x[train_idx:], y[:train_idx], y[train_idx:])
        
    def _transform_rating(self, rating: float):
        """Scales the ratings between 0 and 1."""
        return (rating - self._min_rating)/(self._max_rating - self._min_rating)

    @property
    def userid_to_index(self):
        return self._user_to_idx

    @property
    def index_to_userid(self):
        return self._idx_to_user

    @property
    def movieid_to_index(self):
        return self._movie_to_idx
    
    @property
    def index_to_movieid(self):
        return self._idx_to_movie

    @property
    def get_user_count(self):
        return self._num_users
    
    @property
    def get_movie_count(self):
        return self._num_movies


class Recommender(tf.keras.Model):
    def __init__(self, num_users, num_movies, embedding_size, **kwargs):
        super().__init__(**kwargs)
        self.num_users = num_users
        self.num_movies = num_movies
        self.embedding_size = embedding_size
        self.user_embedding = tf.keras.layers.Embedding(
            num_users,
            embedding_size,
            embeddings_initializer = 'he_normal',
            embeddings_regularizer = tf.keras.regularizers.l2(1e-6),
            name = 'user_embedding'
        )
        self.user_bias = tf.keras.layers.Embedding(num_users, 1)
        self.movie_embedding = tf.keras.layers.Embedding(
            num_movies,
            embedding_size,
            embeddings_initializer = 'he_normal',
            embeddings_regularizer = tf.keras.regularizers.l2(1e-6),
            name = 'movie_embedding'
        )
        self.movie_bias = tf.keras.layers.Embedding(num_movies, 1)

    def call(self, inputs):
        user_vector = self.user_embedding(inputs[:, 0])
        user_bias = self.user_bias(inputs[:, 0])
        movie_vector = self.movie_embedding(inputs[:, 1])
        movie_bias = self.movie_bias(inputs[:, 1])
        
        user_movie_dot = tf.tensordot(user_vector, movie_vector, 2)
        result = user_movie_dot + movie_bias + user_bias
        
        return tf.nn.sigmoid(result)

def plot_loss_curve(history: dict):
    epochs = history.epoch
    train_loss = history.history.get('loss')
    val_loss = history.history.get('val_loss')

    plt.figure()
    plt.xlabel('Epochs')
    plt.ylabel('Losses')
    plt.plot(epochs, train_loss, label = 'Train')
    plt.plot(epochs, val_loss, label = 'Validation')
    plt.legend()
    plt.show()


if __name__ == "__main__":
    ratings_df = pd.read_csv(RATINGS_CSV)
    dataset = MovieLensDataset(df = ratings_df, train_ratio = 0.8)
    x_train, x_test, y_train, y_test = dataset.prepare()
    print(x_train.shape, y_train.shape, x_test.shape, y_test.shape)
    print(dataset.get_user_count, dataset.get_movie_count)
    model = Recommender(
        num_users = dataset.get_user_count, 
        num_movies = dataset.get_movie_count, 
        embedding_size = 50
    )
    model.compile(
        optimizer = tf.keras.optimizers.Adam(learning_rate = 0.001),
        loss = tf.keras.losses.BinaryCrossentropy(),
        metrics = tf.keras.metrics.MeanSquaredError() 

    )
    hist = model.fit(
        x = x_train,
        y = y_train, 
        epochs = 2,
        batch_size = 128,
        validation_data = (x_test, y_test)
    )
    plot_loss_curve(hist)


