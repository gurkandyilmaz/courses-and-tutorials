import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.metrics import r2_score, mean_squared_error

SEED = 12
NUM_SAMPLES = 10
NUM_COLUMNS = 1
LEARNING_RATE = 0.01
EPOCHS = 125

np.random.seed(seed = SEED)

class LinearRegressor:
    """
    Custom Linear regressor class. Fits a linear model whose form is 
    y = w0 + w1*x, where w0 and w1 model weights to be optimized. 
    Loss function is mean square error, loss = (1/M)*(y - (w0 + w1*x))**2
    where M is the number of samples.
    dw1 = (1/M)*2*(y - y')*(-x) where y'= w0 + w1*x
    dw0 = (1/M)*2*(y - y')*(-1)
    """
    
    def __init__(self, learning_rate : float = 0.01):
        """
        param: learning_rate: determines the step in updatings the two weights.
        """
        self.learning_rate = learning_rate
        self.loss = []

    def fit(self, x: np.array, y: np.array, epochs: int = 2) -> 'LinearRegressor':
        """
        Finds the best values for the two weights by minimizing the loss function.
        param: x: feature vector.
        param: y: target vector.
        param: epochs: repeat the update for this amount.

        Returns
        LinearRegressor object.
        """
        self.rows, self.columns = x.shape
        self.rows_target, self.columns_target = y.shape

        self.w0 = 1.0
        self.w1 = np.random.randn(1, self.columns)
        
        print(f'Initials >> "w0": {self.w0}, "w1": {self.w1}')
        
        for _ in range(epochs):
            preds = self.predict(x)
            preds = np.reshape(preds, (-1,1))
            
            self.loss.append(np.sum(np.square(y - preds) / self.rows))

            dw0 = -(2 / self.rows) * np.sum(y - preds)
            dw1 = -(2 / self.rows) * x.T.dot(y - preds)

            self.w0 -= self.learning_rate * dw0
            self.w1 -= self.learning_rate * dw1
            #print(f'dw0: {dw0}, dw1: {dw1}')
            #print(f'"w0": {self.w0}, "w1": {self.w1}')
        
        return self

    def predict(self, x: np.array) -> np.array:
        """
        Returns the predicted values from the model by calculating the
        linear equation 'w0 + w1 * x'
        param: x: feature vector to get a target prediction

        Returns
        np.array containing predicted values for x.

        """
        return x.dot(self.w1) + self.w0

if __name__ == "__main__":
    feature = np.random.randn(NUM_SAMPLES, 1)
    target = (np.random.rand(NUM_SAMPLES, 1) * 1.5) - 1 
    
    regressor = LinearRegressor(learning_rate = LEARNING_RATE)
    regressor.fit(feature, target, epochs = EPOCHS)
    predicted = regressor.predict(feature)
    score_r2 = r2_score(target, predicted)
    score_mse = mean_squared_error(target, predicted)

    super_title = f'R2: {score_r2}, MSE: {score_mse}'
    
    plt.figure(figsize=(16,8))
    plt.subplot(1, 2, 1)
    plt.title('Scatter plot of the data')
    plt.scatter(x = feature, y = target, c = 'blue', label = 'True')
    plt.scatter(x = feature, y = predicted, c = 'red', label = 'Predicted')
    plt.xlabel('feature_1')
    plt.ylabel('target')
    plt.legend()
    plt.grid()
    
    plt.subplot(1, 2, 2)
    plt.plot([*range(len(regressor.loss))], regressor.loss)
    plt.title('Mean Squared Error Loss')
    plt.xlabel('Epochs')
    plt.ylabel('MSE')
    plt.grid()
    
    plt.suptitle(super_title)
    plt.show()


