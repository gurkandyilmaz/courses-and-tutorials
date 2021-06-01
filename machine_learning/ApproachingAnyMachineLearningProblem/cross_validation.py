"""Difference between KFold and StratifiedKFold cross validation"""
import pandas as pd
from sklearn.model_selection import StratifiedKFold

import os
from pathlib import Path

DATA_DIR = os.getenv("DATA_DIR", Path("../Datasets"))

if __name__ == "__main__":
    df = pd.read_csv("../Datasets/housing.csv")
    target_name = "ocean_proximity"
    print("Before splitting:\n", df[target_name].value_counts() / len(df))
    
    df["kfold"] = -1
    df = df.sample(frac=1).reset_index(drop=True)
    target = df[target_name].values
    kf = StratifiedKFold(n_splits=2)
    for train_idx, test_idx in kf.split(X=df, y=target):
        train_df = df.loc[train_idx,:]
        test_df = df.loc[test_idx, :]
        print("Train target distribution:\n", train_df[target_name].value_counts() / len(train_df))
        print("Test target distribution:\n", test_df[target_name].value_counts() / len(test_df))
   

