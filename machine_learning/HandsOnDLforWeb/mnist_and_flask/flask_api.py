"""A simple flask app serving the saved mnist model via an API"""
import os

from flask import Flask, request, render_template, jsonify
from imageio import imread
from PIL import Image
import numpy as np
import tensorflow as tf
from tensorflow.keras.models import model_from_json

from config import MNIST, APP
from prepate_data import loadImageFile, loadLabelFile, generate_images
from utils import stringToImage, load_model

app = Flask(__name__)

@app.route('/')
def index():
    return 'TODO an index page'

@app.route('/predict/', methods=['POST'])
def predict():
    # TODO add a logger for api
    data = request.files['img']
    img = Image.open(data.stream)
    img.load()
    image = Image.new('L', img.size )
    image.paste(img, mask=img.split()[3])
    image = np.array(image)
    image = np.reshape(image, (1,28,28,1)) / 255
    
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
        pred = model.predict(image)
        pred = [f'{float(score):.9f}' for score in pred[0]]
        pred = {str(idx):score for idx, score in enumerate(pred)}
    return jsonify({'response': pred})

if __name__ == "__main__":
    app.run(host='127.0.0.1', port=5000, debug=True)
