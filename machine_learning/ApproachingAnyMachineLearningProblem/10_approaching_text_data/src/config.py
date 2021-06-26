from pathlib import Path

PROJECT_DIR = Path.cwd().parent
INPUT_DIR = PROJECT_DIR / "input"
SAVED_MODELS_DIR = PROJECT_DIR / "saved_models"

RAW_FILE = "imdb_reviews.csv"
TRAIN_FILE = "imdb_reviews_train.csv"
TEST_FILE = "imdb_reviews_test.csv"

if __name__ == "__main__":
    print(PROJECT_DIR)
