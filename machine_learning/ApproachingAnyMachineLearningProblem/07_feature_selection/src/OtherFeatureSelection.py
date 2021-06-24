import pandas as pd
import numpy as np
from sklearn.feature_selection import VarianceThreshold, RFE, SelectFromModel
from sklearn import linear_model, ensemble

def remove_based_on_variance(dataframe, threshold = 0.1):
    target = dataframe["target"]
    var = VarianceThreshold(threshold = threshold)
    transformed_data = var.fit_transform(dataframe.drop(columns=["target"]))
    columns_kept = dataframe.drop(columns=["target"]).loc[:, var.get_support()].columns
    transformed_df = pd.DataFrame(transformed_data, columns=columns_kept)
    
    return pd.concat([transformed_df, target], axis=1)

def remove_based_on_correlation():
    #TODO
    pass

def remove_based_on_rfe(dataframe, n_features):
    model = linear_model.LinearRegression()
    rfe = RFE(estimator=model, n_features_to_select=n_features)
    features = dataframe.drop(columns=["target"])
    target = dataframe["target"]
    rfe.fit(features, target)
    features_transformed = rfe.transform(features)
    features_df = pd.DataFrame(features_transformed)
    
    return pd.concat([features_df, target], axis=1)

def remove_based_on_feature_importance(dataframe, most_important = 3):
    features = dataframe.drop(columns=["target"])
    target = dataframe["target"]
    model = ensemble.RandomForestRegressor()
    model.fit(features, target) 
    importances = model.feature_importances_
    idx = np.argsort(importances)[:4]
    features_df = dataframe.iloc[:, idx]

    return pd.concat([features_df, target], axis=1)


def remove_based_on_select_from_model(dataframe, max_features):
    features = dataframe.drop(columns=["target"])
    target = dataframe["target"]
    model = ensemble.RandomForestRegressor()
    sfm = SelectFromModel(estimator=model, max_features=max_features)
    features_transformed = sfm.fit_transform(features, target)
    columns_kept = features.loc[:, sfm.get_support()].columns
    features_df = pd.DataFrame(features_transformed, columns=columns_kept)

    return pd.concat([features_df, target], axis=1)


if __name__ == "__main__":
    from config import RANDOM_CLASSIFICATION_DATA, RANDOM_REGRESSION_DATA
    df_classification = pd.read_csv(RANDOM_CLASSIFICATION_DATA)
    df_regression = pd.read_csv(RANDOM_REGRESSION_DATA)

    #df_transformed = remove_based_on_variance(df, 1.5)
    #df_transformed = remove_based_on_rfe(df, n_features=4)
    #df_transformed = remove_based_on_feature_importance(df_regression, most_important=4)
    df_transformed = remove_based_on_select_from_model(df_regression, max_features=4)
    print(df_transformed.head())

