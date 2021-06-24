"""This file creates random classification or regression data given n_samples and n_features"""

import argparse
import pandas as pd
import numpy as np
from sklearn.datasets import make_classification, make_regression

import config

class MakeRandomData:
    def __init__(self):
        self.x = None
        self.y = None
        self.data_type = None 

    def classification_data(self, n_samples=100, n_features=10, n_classes=2):
        self.data_type = "classification"
        self.x, self.y = make_classification( n_samples=n_samples, n_features=n_features, n_classes=n_classes, random_state=12)
        self._prepare_and_save_data()
       

    def regression_data(self, n_samples=100, n_features=10):
        self.data_type = "regression"
        self.x, self.y = make_regression(n_samples=n_samples, n_features=n_features)
        self._prepare_and_save_data()

    def _prepare_and_save_data(self):
        feature_names = [f"x_{i}" for i in range(self.x.shape[1])]
        feature_names.append("target")
        data = pd.DataFrame( np.concatenate((self.x, self.y.reshape(-1,1)), axis=1), columns=feature_names)
        
        if self.data_type == "classification":
            data.to_csv(config.RANDOM_CLASSIFICATION_DATA, index=False)
        elif self.data_type == "regression":
            data.to_csv(config.RANDOM_REGRESSION_DATA, index=False)

if __name__ == "__main__":
    random_data = MakeRandomData()
    parser = argparse.ArgumentParser()
    parser.add_argument("--target", type=str, help="classification or regression")
    parser.add_argument("--n_samples", type=int, default=100, help="number of rows")
    parser.add_argument("--n_features", type=int, default=10, help="number of columns")
    parser.add_argument("--n_classes", type=int, default=2, help="number of classes for classification")

    args = parser.parse_args()
    print(args)
    if args.target == "regression":
        random_data.regression_data(n_samples=args.n_samples, n_features=args.n_features)
    elif args.target == "classification":
        random_data.classification_data(n_samples=args.n_samples, n_features=args.n_features, n_classes=args.n_classes)
    
