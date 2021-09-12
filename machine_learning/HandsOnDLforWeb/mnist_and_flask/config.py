import os
from pathlib import Path
from dotenv import load_dotenv, find_dotenv

load_dotenv(find_dotenv())

DATASETS_DIR = Path(os.getenv('DATASETS_DIR'))
ROOT_DIR = Path(os.getenv('ROOT_DIR'))    

class MNIST:
    BASE = DATASETS_DIR / 'mnist-data/'
    TRAIN_DATA_FILE = BASE / 'train-images.idx3-ubyte'
    TRAIN_LABELS_FILE = BASE / 'train-labels.idx1-ubyte'
    TEST_DATA_FILE = BASE / 't10k-images.idx3-ubyte'
    TEST_LABELS_FILE = BASE / 't10k-labels.idx1-ubyte'
    SAVED_MODELS = ROOT_DIR / 'mnist_and_flask/saved_models/'
    MODEL_JSON = SAVED_MODELS / 'model.json'
    MODEL_WEIGHTS = SAVED_MODELS / 'cnn_weights.h5'
    
class Logger:
    LOGGER_FILE = ROOT_DIR / 'mnist_and_flask/custom_logger_configs.yaml'

class APP:
    MEDIA = ROOT_DIR / 'mnist_and_flask/media/'


if __name__ == "__main__":
    for file in MNIST.BASE.iterdir():
        print(file)
