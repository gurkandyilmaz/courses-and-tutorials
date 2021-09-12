import os
from pathlib import Path
from dotenv import load_dotenv, find_dotenv

load_dotenv(find_dotenv())

DATASETS_DIR = Path(os.getenv('DATASETS_DIR'))
    
class MNIST:
    BASE = DATASETS_DIR / 'mnist-data'
    TRAIN_DATA_FILE = BASE / 'train-images.idx3-ubyte'
    TRAIN_LABELS_FILE = BASE / 'train-labels.idx1-ubyte'
    TEST_DATA_FILE = BASE / 't10k-images.idx3-ubyte'
    TEST_LABELS_FILE = BASE / 't10k-labels.idx1-ubyte'
    SAVED_MODELS = Path().absolute() / 'saved_models'

class Logger:
    LOGGER_FILE = 'custom_logger_configs.yaml'


if __name__ == "__main__":
    for file in MNIST.BASE.iterdir():
        print(file)
