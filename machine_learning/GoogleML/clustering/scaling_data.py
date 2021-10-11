"""Demonstrates different scaling methods such as log transformation, 
normalization by z-score, and quantile transformation."""

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt


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
        'random_int': feature_1,
        'power': feature_2,
        'randn': feature_3,
        'beta': feature_4
    }

    df = pd.DataFrame.from_dict(features)
    
    return df

def plot_hist(df: pd.DataFrame, columns: list) -> None:
    plt.figure(figsize = (12, 8))
    plt.suptitle('Feature Distributions.')
    for idx, col in enumerate(columns, start = 1):
        plt.subplot(2, 2, idx)
        plt.title(col)
        plt.hist(df[col])

    plt.show()


if __name__ == "__main__":
    df = create_dummy_df(samples = 1000)
    plot_hist(df, df.columns)




