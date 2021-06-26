import joblib
import numpy as np
from nltk.tokenize import word_tokenize
from nltk.stem import SnowballStemmer

def stem_sentence(sentence: str):
    transformed_tokens = []
    stemmer = SnowballStemmer(language="english")
    for word in sentence.lower().split():
        transformed_tokens.append(stemmer.stem(word))

    return " ".join(transformed_tokens)


def vectorize_sentence(sentence: str):
    tfidf_vectorizer = joblib.load("saved_models/tfidf_vectorizer.pkl")
    
    return tfidf_vectorizer.transform([sentence])

def load_classifier(fname = "classifier_model.pkl"):
    model = joblib.load(f"saved_models/{fname}")
    
    return model

if __name__ == "__main__":
    text = "test sentence"
    text = stem_sentence(text)
    text = vectorize_sentence(sentence=text)
    print(text)
