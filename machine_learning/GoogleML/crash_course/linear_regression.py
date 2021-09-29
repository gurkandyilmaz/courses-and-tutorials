import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

SEED = 12
NUM_SAMPLES = 10
NUM_FEATURES = 2
NUM_LABELS = 2
COLORS = np.array(['red','blue'])

np.random.seed(seed = SEED)

class LinearRegressor:
    """Custom Linear regressor class."""
    def __init__(self, loss: str = 'l2'):
        """
        param:loss: 'l1'or 'l2' default 'l2'
        """
        self._loss = loss

    def fit(self, x, y):
        pass

    def predict(self, x):
        pass

    def _loss_l2(self):
        pass


if __name__ == "__main__":
    features = np.random.randn(NUM_SAMPLES, NUM_FEATURES)
    # can be used for classification task
    labels = np.random.randint(0, NUM_LABELS, NUM_SAMPLES)

    print(features)
    print(features.shape)
    print(labels, labels.shape)
    print(COLORS[labels])

    plt.figure(figsize=(8,8))
    plt.title('Scatter plot of the data')
    plt.scatter(x = features[:, 0], y = features[:, 1], s = 50, c = COLORS[labels])
    plt.plot([-1.5, 1.5], [-0.5, 2.0])
    plt.grid()
    plt.show()
