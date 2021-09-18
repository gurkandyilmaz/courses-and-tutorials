import io
import pickle
import re
import string
import os
from dotenv import find_dotenv, load_dotenv

import numpy as np
import pandas as pd
from nltk.corpus import stopwords
from nltk.tokenize import WordPunctTokenizer
from sklearn.feature_extraction.text import TfidfVectorizer, CountVectorizer

from flask import Flask, request, render_template, make_response
from flask_wtf import FlaskForm
from wtforms import StringField, validators
from flask_jsonpify import jsonpify
from flask_restful import Resource, Api

from Logger import get_logger
from recommender_model import clean_text, load_pickle

load_dotenv(find_dotenv())

DEBUG = True
app = Flask(__name__)
app.config['SECRET_KEY'] = os.getenv('FLASK_SECRET_KEY')

API = Api(app)
LOGGER = get_logger(__name__)

class TextFieldForm(FlaskForm):
    text = StringField('Document Content', validators=[validators.data_required()])

class FlaskWork(Resource):
    def get(self):
        headers = {'Content-Type': 'text/html'}
        return make_response(render_template('index.html'), 200, headers)

    def post(self):
        print('POSTTTTTTT')
        P = load_pickle('./pickled_models/product_weights.pkl')
        #U = load_pickle('./pickled_models/user_weights.pkl')
        user_vectorizer = load_pickle('./pickled_models/user_vectorizer.pkl')
        sentence = request.form['search']
        LOGGER.debug(f'User query: {sentence}')
        
        query_data = pd.DataFrame([sentence], columns=['Text'])
        query_data['Text'] = query_data['Text'].apply(clean_text)
        test_vectors = user_vectorizer.transform(query_data['Text'])
        test_v_df = pd.DataFrame(test_vectors.toarray(), index = query_data.index,
                columns = user_vectorizer.get_feature_names())

        predicted_ratings = pd.DataFrame(np.dot(test_v_df.loc[0], P.T),
                index = P.index, columns = ['Ratings'])
        predictions = pd.DataFrame.sort_values(predicted_ratings, ['Ratings'],
                ascending = [0])[:10]

        LOGGER.debug(f'predictions : {predictions}')
        #return jsonpify(predictions.to_json())
        return {'Hello '}

API.add_resource(FlaskWork, '/')

if __name__ == "__main__":
    app.run(host = '127.0.0.1', port = 4000, debug = True)



