"""Remove features based on greedy feature selection by training a model to keep or reject the features."""

from sklearn import metrics, linear_model


class GreedyFeatureSelection:

    def evaluate_score(self, X, y):
        model = linear_model.LogisticRegression()
        model.fit(X, y)
        preds = model.predict(X)
        auc = metrics.roc_auc_score(y, preds)

        return auc

    def _feature_selection(self, X, y):
        good_features = []
        best_scores = []
        num_features = X.shape[1]
        state = True
        while state:
            best_score = 0
            for column in range(num_features):
                if column in good_features:
                    continue
                selected_features = good_features + [column]
                xtrain = X[:,selected_features]
                score = self.evaluate_score(xtrain, y)
                if score > best_score:
                    best_score = score
                    best_scores.append(best_score)
                    good_features.append(column)

                if len(best_scores) > 1:
                    if best_scores[-1] <= best_scores[-2]:
                        state = False

        return best_scores[:-1], good_features[:-1]

    def __call__(self, X, y):
        scores, features = self._feature_selection(X, y)
        
        return X[:, features], scores


if __name__ == "__main__":
    import pandas as pd
    from config import RANDOM_CLASSIFICATION_DATA
    df_classification = pd.read_csv(RANDOM_CLASSIFICATION_DATA)
    x = df_classification.drop(columns=["target"]).values
    y = df_classification["target"].values
    
    x_transformed, scores = GreedyFeatureSelection()(x, y)
    print(x.shape)
    print(x_transformed.shape)

