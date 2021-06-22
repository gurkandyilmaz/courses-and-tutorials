"""Remove features based on univariate feature selection methods from sklearn."""
from numpy.lib.function_base import percentile
from sklearn.feature_selection import chi2, f_classif, f_regression
from sklearn.feature_selection import mutual_info_classif, mutual_info_regression
from sklearn.feature_selection import SelectKBest, SelectPercentile


class UnivariateFeatureSelection:
    def __init__(self, n_features, problem_type, scoring):
        if problem_type == "classification":
            valid_scoring = {
                "f_classifs": f_classif,
                "chi2": chi2,
                "mutual_info_classif": mutual_info_classif
            }
        elif problem_type == "regression":
            valid_scoring = {
                "f_regression": f_regression,
                "mutual_info_regression": mutual_info_regression
            }

        if scoring not in valid_scoring:
            raise Exception(f"Invalid scoring. Options are: {valid_scoring.keys()}")
        
        if isinstance(n_features, int):
            self.selection = SelectKBest(valid_scoring[scoring], k=n_features)
        elif isinstance(n_features, float):
            self.selection = SelectPercentile(valid_scoring[scoring], percentile=int(n_features*100))
        else:
            raise Exception("Invalid n_features. It should be float or int.")

    def fit(self, X, y):
        return self.selection.fit(X, y)

    def transform(self, X):
        return self.selection.transform(X)

    def fit_transform(self, X, y):
        return self.selection.fit_transform(X, y)

    def get_support(self):
        return self.selection.get_support()



if __name__ == "__main__":
    import pandas as pd
    from config import RANDOM_REGRESSION_DATA
    df = pd.read_csv(RANDOM_REGRESSION_DATA)
    x = df.drop(columns=["target"])
    y = df["target"]

    ufs = UnivariateFeatureSelection(n_features=5, problem_type="regression", scoring="f_regression")
    transformed_data = ufs.fit_transform(x, y)
    columns_kept = df.drop(columns=["target"]).loc[:, ufs.get_support()].columns
    transformed_df = pd.DataFrame(transformed_data, columns=columns_kept)
    all_df = pd.concat([transformed_df, y], axis=1)
    print(all_df.head())


