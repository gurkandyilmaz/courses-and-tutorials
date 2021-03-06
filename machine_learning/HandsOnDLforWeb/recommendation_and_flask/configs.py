import os
from pathlib import Path
from dotenv import find_dotenv, load_dotenv

load_dotenv(find_dotenv())

DATASETS_DIR = Path(os.getenv('DATASETS_DIR'))
ROOT_DIR = Path(os.getenv('ROOT_DIR'))
AMAZON_REVIEWS_CSV = Path(os.getenv('AMAZON_REVIEWS_CSV'))
LOGGER_CONFIGS_FILE = os.getenv('LOGGER_CONFIGS_FILE')

if __name__ == "__main__":
    print(os.getenv('DATASETS_DIR'))
    print(os.environ.get('DATASETS_DIR'))
