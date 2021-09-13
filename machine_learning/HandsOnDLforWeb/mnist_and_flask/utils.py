import re, base64
import tensorflow as tf
from tensorflow.keras.models import model_from_json
from config import MNIST, APP
from custom_logger import get_logger

LOGGER = get_logger(__name__)

def stringToImage(img):
    imgstr = re.search(r'base64, (.*)', str(img)).group(1)
    with open(APP.MEDIA / 'image.png', 'wb') as out:
        out.write(base64.b64decode(imgstr))

def load_model(json_model: str, weights: str):
    with open(MNIST.SAVED_MODELS / json_model) as f:
        model = model_from_json(f.read())
    model.load_weights(str(MNIST.SAVED_MODELS / weights))
    model.compile(
            loss='categorical_crossentropy',
            optimizer='adam',
            metrics=['accuracy'],
            run_eagerly=True
    )
    graph = tf.compat.v1.get_default_graph()
    print(type(graph), type(model))
    return graph, model


