"""This file is used to get a version of the raw data without manipulating the raw data."""

import pandas as pd
import config
import argparse

def save_data_as_train_test(raw_data, train_ratio = 0.8):
    raw_file = config.INPUT_DIR / "raw" / raw_data
    df = pd.read_csv(raw_file)
    df_positive = df.loc[df["sentiment"] == "positive", :].sample(frac=1.0, random_state=12).reset_index(drop=True)
    df_negative = df.loc[df["sentiment"] == "negative", :].sample(frac=1.0, random_state=12).reset_index(drop=True)
    
    train_idx = int( (train_ratio * len(df)) / 2)
    
    df_train_pos = df_positive.loc[:train_idx-1, :]
    df_train_neg = df_negative.loc[:train_idx-1, :]
    df_train = pd.concat([df_train_neg, df_train_pos], axis=0)
    
    df_test_pos = df_positive.loc[train_idx:, :]
    df_test_neg = df_negative.loc[train_idx:, :]
    df_test = pd.concat([df_test_neg, df_test_pos], axis=0)

    df_train.to_csv(config.INPUT_DIR / config.TRAIN_FILE, index=False)
    df_test.to_csv(config.INPUT_DIR / config.TEST_FILE, index=False)
    
    print(f"Train file shape: {df_train.shape}")
    print(f"Test file shape: {df_test.shape}")


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    
    parser.add_argument("--file", type=str, help="raw csv file")
    parser.add_argument("--train_ratio", type=float, help="split ratio for dividing data into train an test.")
    
    args = parser.parse_args()
    save_data_as_train_test(args.file, args.train_ratio)


