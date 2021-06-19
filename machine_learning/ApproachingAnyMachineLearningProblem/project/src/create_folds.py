"""This file is used to take the input data then shuffle it and create folds"""

import pandas as pd
from pathlib import Path
from sklearn.model_selection import StratifiedKFold
from sklearn.utils import shuffle

def create_folds(dataframe, target, num_folds=5):
    dataframe = dataframe.sample(frac=1).reset_index(drop=True)
    kf = StratifiedKFold(n_splits=num_folds)
    dataframe["folds"] = -1
    
    for fold, (train_idx, val_idx) in enumerate(kf.split(X=dataframe, y=dataframe[target])):
        dataframe.loc[val_idx, "folds"] = fold
    
    dataframe.to_csv("../input/mnist_train_folds.csv", index=False)

    return dataframe

if __name__ == "__main__":
    print(Path().cwd())
    df_train = pd.read_csv("../input/mnist_train.csv")
    df_train_folds = create_folds(dataframe=df_train, target="label", num_folds=5)
    print(df_train_folds)
    print(df_train_folds["folds"].value_counts())





