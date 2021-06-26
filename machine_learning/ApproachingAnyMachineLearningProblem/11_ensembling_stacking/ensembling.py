from typing import List

import numpy as np
import xgboost as xgb
from sklearn import metrics, model_selection, linear_model, ensemble
from sklearn.datasets import make_classification

from AUCOptimizer import AUCOptimizer

def fit(models: List, features: List[List], targets: List) -> List:
    fitted_models = []
    for model in models:
        model.fit(features, targets)
        fitted_models.append(model)

    return fitted_models

def predict(models: List, features: List[List]) -> List:
    model_preds = []
    for model in models:
        model_preds.append(model.predict_proba(features)[:, 1])

    return model_preds

def auc(targets: List, predictions: List[List]):
    auc_scores = []
    for i in range(predictions.shape[1]):
        auc = metrics.roc_auc_score(targets, predictions[:, i])
        auc_scores.append(auc)

    return auc_scores


if __name__ == "__main__":
    X, y = make_classification(n_samples = 10000, n_features = 20)
    xfold1, xfold2, yfold1, yfold2 = model_selection.train_test_split(X, y, test_size=0.2, random_state=12, stratify=y)
    xgbc = xgb.XGBClassifier(use_label_encoder=False, eval_metric="logloss")
    rf = ensemble.RandomForestClassifier()
    logreg = linear_model.LogisticRegression()
    
    models = [xgbc, rf, logreg]
    
    # Train on fold 1 and make predictions on fold 2
    xgbc, rf, logreg = fit(models=models, features=xfold1, targets=yfold1)
    preds_xgbc, preds_rf, preds_logreg = predict(models=models, features=xfold2)
    preds_avg = (preds_xgbc + preds_rf + preds_logreg) / len(models)
    preds_fold2 = np.column_stack((preds_xgbc, preds_rf, preds_logreg, preds_avg))
    aucs_folds2 = auc(yfold2, preds_fold2)
    
    print(f"Fold-2: XGBC AUC {aucs_folds2[0]}")
    print(f"Fold-2: RF AUC {aucs_folds2[1]}")
    print(f"Fold-2: LogReg AUC {aucs_folds2[2]}")
    print(f"Fold-2: AVG AUC {aucs_folds2[3]}")
    
    print("-----------------------")
    # Train on fold 2 and make predictions on fold 1.
    xgbc, rf, logreg = fit(models=models, features=xfold2, targets=yfold2)
    preds_xgbc, preds_rf, preds_logreg = predict(models=models, features=xfold1)
    preds_avg = (preds_xgbc + preds_rf + preds_logreg) / len(models)
    preds_fold1 = np.column_stack((preds_xgbc, preds_rf, preds_logreg, preds_avg))
    aucs_folds1 = auc(yfold1, preds_fold1)
 
    print(f"Fold-1: XGBC AUC {aucs_folds1[0]}")
    print(f"Fold-1: RF AUC {aucs_folds1[1]}")
    print(f"Fold-1: LogReg AUC {aucs_folds1[2]}")
    print(f"Fold-1: AVG AUC {aucs_folds1[3]}")
    
    
    # optimal weights for the ensemle models.
    opt = AUCOptimizer()
    opt.fit(preds_fold1[:, :-1], yfold1)
    opt_preds_fold2 = opt.predict(preds_fold2[:, :-1])
    auc = metrics.roc_auc_score(yfold2, opt_preds_fold2)
    print(f"Optimized AUC, Fold 2: {auc}")
    print(f"Coefficients: {opt.coef_}")

    opt = AUCOptimizer()
    opt.fit(preds_fold2[:, :-1], yfold2)
    opt_preds_fold1 = opt.predict(preds_fold1[:, :-1])
    auc = metrics.roc_auc_score(yfold1, opt_preds_fold1)
    print(f"Optimized AUC, Fold 1: {auc}")
    print(f"Coefficients: {opt.coef_}")

