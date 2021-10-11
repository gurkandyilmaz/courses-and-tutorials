"""Demonstrates different scaling methods such as log transformation, 
normalization by z-score, and quantile transformation."""

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from scipy.stats import stats

def create_dummy_df(samples: int = 10) -> pd.DataFrame:
    """
    Creates a dummy dataframe containing four columns whose values were 
    generated randomly.
    """
    random_number_gen = np.random.RandomState(12)
    
    feature_1 = random_number_gen.randint(low = 10000, high = 15000, size = samples)
    feature_2 = 750 * random_number_gen.power(3, size = samples)
    feature_3 = 55 * random_number_gen.randn(samples)
    feature_4 = random_number_gen.beta(1.5, 4.6, size = samples)

    features = {
        'randint': feature_1,
        'power': feature_2,
        'randn': feature_3,
        'beta': feature_4
    }

    df = pd.DataFrame.from_dict(features)
    
    return df

def transform_values(values, mode : str) -> np.array:
    if mode == 'zscore':
        return stats.zscore(values)
    elif mode == 'log':
        return np.log(values)
    elif mode == 'quantile':
        pass

def plot_hist(df: pd.DataFrame, columns: list) -> None:
    plt.figure(figsize = (16, 8))
    plt.suptitle('Feature Distributions.')
    for idx, col in enumerate(columns, start = 1):
        plt.subplot(2, 4, idx)
        plt.title(col)
        plt.hist(df[col])

    plt.show()


if __name__ == "__main__":
    df = create_dummy_df(samples = 1000)
    df['normalized_randn']=transform_values(df['randn'], mode = 'zscore')
    df['log_power'] = transform_values(df['power'], mode = 'log')
    df['normalized_beta'] = transform_values(df['beta'], mode = 'zscore')
    df['log_beta'] = transform_values(df['beta'], mode = 'log')
    print(df.head(3))
    print(df.describe())
    plot_hist(df, df.columns)




