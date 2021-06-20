"""This file is used to take the input data then assign random folds to them based on the target distribution."""

import pandas as pd
from sklearn.model_selection import StratifiedKFold

import config

def create_folds(input_file, target = "target", num_folds = 5):
    df = pd.read_csv(config.INPUT_DIR / input_file, index_col="id")
    
    # Take half of the data. memory issues.
    df = df.sample(frac=0.25).reset_index(drop=True)    
    
    df["folds"] = None
    kf = StratifiedKFold(n_splits=num_folds, shuffle=True, random_state=12)
    for fold, (train_idx, val_idx) in enumerate(kf.split(X=df, y=df[target])):
        df.loc[val_idx, "folds"] = fold
    
    input_file_folds = input_file.split(".")[0]
    input_file_folds = f"{input_file_folds}_folds.csv"

    df.to_csv(config.INPUT_DIR / input_file_folds, index=False)

if __name__ == "__main__":
    train_file = "categorical_features_train.csv"
    create_folds(train_file)
