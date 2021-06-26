from time import time
import numpy as np
import flask
from flask import Flask
from flask import request

from utils import stem_sentence, vectorize_sentence, load_classifier

app = Flask(__name__)

model = load_classifier(fname = "classifier_model.pkl")


@app.route("/predict", methods=["GET"])
def predict():
    results = {}
    raw_sentence = request.args.get("sentence", "EMPTY")
    t0 = time()
    sentence = stem_sentence(raw_sentence)
    t1 = time()
    sentence = vectorize_sentence(sentence)
    t2 = time()
    predicted_scores = model.predict_proba(sentence)
    t3 = time()
    negative_score = predicted_scores[0][0]
    positive_score = predicted_scores[0][1]
    
    stemming_time = f"{np.round(t1-t0, 2)} seconds."
    vectorizing_time = f"{np.round(t2-t1, 2)} seconds."
    prediction_time = f"{np.round(t3-t2, 2)} seconds."

    results["text"] = raw_sentence
    results["stemming_time"] = stemming_time
    results["vectorizing_time"]  = vectorizing_time
    results["prediction_time"] = prediction_time
    results["positive_score"] = positive_score
    results["negative_score"] = negative_score
    print(results)
    return flask.jsonify({"response": results})

if __name__ == "__main__":
    app.run(host="0.0.0.0")
