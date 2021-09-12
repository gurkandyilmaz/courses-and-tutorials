"""A simple flask app serving the saved mnist model via an API"""
import os

from flask import Flask, request, render_template
from imageio import imread
from PIL import Image
import numpy as np
import tensorflow as tf
from tensorflow.keras.models import model_from_json

from config import MNIST, APP
from prepate_data import loadImageFile, loadLabelFile
from utils import stringToImage, load_model

app = Flask(__name__)

@app.route('/')
def index():
    return 'Hello world'

@app.route('/predict/', methods=['POST'])
def predict():

    test_image_file = MNIST.TEST_DATA_FILE
    test_label_file = MNIST.TEST_LABELS_FILE

    test_data = loadImageFile(test_image_file)
    test_data = np.reshape(test_data, (test_data.shape[0], 28, 28, 1)) #required by keras
    test_labels = loadLabelFile(test_label_file)

   #imgData = request.get_data()
    #try:
    #    stringToImage(imgData)
    #    print("HERE")
    #except:
    #    print("HATA")
    #    f = request.files['img']
    #    print(f)
    #    f.save(APP.MEDIA / 'image.png')
    #image = imread(APP.MEDIA / 'image.png')
    #print("IMAGE SHAPE: ", image.shape, type(image))
    #image = Image.fromarray(image).resize(size=(28, 28))
    #image = np.array(image)
    #print("IMAGE SHAPE v2: ", image.shape, image[0])
    #image = np.reshape(image, (1,28,28,1))
    image = test_data[0]
    image = np.reshape(image, (1,28,28,1))
    print('LABEL: ', np.where(test_labels[0] == 1)[0])
    graph = tf.compat.v1.get_default_graph()
    with graph.as_default():
        with open(MNIST.MODEL_JSON) as f:
            model = model_from_json(f.read())
        model.load_weights(str(MNIST.MODEL_WEIGHTS))
        model.compile(
                loss='categorical_crossentropy',
                optimizer='adam',
                metrics=['accuracy'],
        )
        print(type(graph), type(model))
        pred = model.predict(image)
        response = np.argmax(pred, axis=1)
        return str(response[0])

if __name__ == "__main__":
    app.run(host='127.0.0.1', port=5000, debug=True, load_dotenv=True)
