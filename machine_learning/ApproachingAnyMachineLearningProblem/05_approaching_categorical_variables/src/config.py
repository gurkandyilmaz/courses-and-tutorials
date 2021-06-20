from pathlib import Path

PROJECT_DIR = Path.cwd().parent
INPUT_DIR = PROJECT_DIR / "input/"
MODEL_DIR = PROJECT_DIR / "models/"

TRAIN_FILE = INPUT_DIR / "categorical_features_train_folds.csv"
TEST_FILE = INPUT_DIR / "categorical_features_test.csv"
