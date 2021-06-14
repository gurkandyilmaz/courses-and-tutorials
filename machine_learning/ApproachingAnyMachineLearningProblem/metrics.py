""" Metrics for classification and regression tasks """
import numpy as np
import matplotlib.pyplot as plt
from sklearn.metrics import accuracy_score, precision_score, recall_score, f1_score

def accuracy(y_true, y_pred):
    """ If the data is skewed accuracy may not be the best option."""
    #TODO check if the lists have the same length

    true_counter = 0
    for y_t, y_p in zip(y_true, y_pred):
        if y_t == y_p:
            true_counter += 1

    return true_counter/len(y_true)

def true_positive(y_true, y_pred):
    """positive class is represented as 1."""
    true_counter = 0
    for idx in range(len(y_true)):
        if (y_pred[idx] == 1) and  (y_true[idx] == 1):
            true_counter += 1
    
    return true_counter

def true_negative(y_true, y_pred):
    """positive class is represented as 1."""
    true_counter = 0
    for idx in range(len(y_true)):
        if (y_pred[idx] == 0) and  (y_true[idx] == 0):
            true_counter += 1
    
    return true_counter

def false_positive(y_true, y_pred):
    """positive class is represented as 1."""
    true_counter = 0
    for idx in range(len(y_true)):
        if (y_pred[idx] == 1) and  (y_true[idx] == 0):
            true_counter += 1
    
    return true_counter

def false_negative(y_true, y_pred):
    """positive class is represented as 1."""
    true_counter = 0
    for idx in range(len(y_true)):
        if (y_pred[idx] == 0) and  (y_true[idx] == 1):
            true_counter += 1
    
    return true_counter

def accuracy_v2(y_true, y_pred):
    """ Ratio of all the correct predictions to all the data."""
    tp = true_positive(y_true, y_pred)
    tn = true_negative(y_true, y_pred)
    fp = false_positive(y_true, y_pred)
    fn = false_negative(y_true, y_pred)
    acc = (tp+tn) / (tp+tn+fp+fn)
    print(f"TP: {tp}\t TN:{tn}\t FP:{fp}\t FN:{fn}")
    return acc

def precision(y_true, y_pred):
    """ Ratio of only correct positive predictions to the data predicted as positive."""
    tp = true_positive(y_true, y_pred)
    fp = false_positive(y_true, y_pred)
    try:
        prec = tp / (tp+fp)
    except ZeroDivisionError:
        #print("Zero Division Occured. Precision set to 0.")
        #print(err)
        return 1.0
    return prec

def recall(y_true, y_pred):
    """Ratio of only correct positive predictions to the data that is actually positive.""" 
    tp = true_positive(y_true, y_pred)
    fn = false_negative(y_true, y_pred)
    recall = tp / (tp+fn)
    return recall 

def f1(y_true, y_pred):
    """ Combine precision and recall into single metric.
        f1 = 2*Precision*Recall / (Precision + Recall)
    """ 
    tp = true_positive(y_true, y_pred)
    fp = false_positive(y_true, y_pred)
    fn = false_negative(y_true, y_pred)
    f1 = 2*tp / (2*tp + fp + fn)
    return f1

def apply_threshold(array, threshold = 0.5):
    """
        Convert the values in the array either to 0 or 1 depending on the threshold. 
        Return the new array.
    """
    new_array = []
    for data in array:
        if data >= threshold:
            new_array.append(1)
        else:
            new_array.append(0)

    return new_array

def plot_precision_recall(y_true, y_pred_prob):
    """
        Computes precision and recall scores after applying a threshold to the raw
        prediction probabilities. 
        Draws a precision vs recall curve.
    """
    precisions = []
    recalls = []
    thresholds = np.arange(0.1, 0.95, 0.1)
    for threshold in thresholds:
        y_pred = apply_threshold(y_pred_prob, threshold=threshold)
        precisions.append(precision(y_true, y_pred))
        recalls.append(recall(y_true, y_pred))
    
    plt.figure(figsize=(12,8))
    plt.plot(recalls, precisions, "r--")
    plt.scatter(recalls, precisions)
    plt.xlim((0,1))
    plt.ylim((0,1))
    plt.title("Precision & Recall Curve")
    plt.legend(["line-plot","scatter-plot"])
    plt.ylabel("Precision")
    plt.xlabel("Recall")
    plt.show()

if __name__ == "__main__":
    y_true = [1,0,1,1,0,0,0,0,1,0,1,0,0,1,0,1,0,1,1,0]
    y_pred = [1,0,1,0,1,0,1,1,0,1,1,0,0,1,0,1,1,0,1,0]
    # y_pred for plot_precision_recall()
#    y_pred = [
#        0.263, 0.111, 0.416, 0.147, 0.119, 0.175,
#        0.159, 0.838, 0.116, 0.177, 0.085, 0.390,
#        0.272, 0.034, 0.046, 0.034, 0.185, 0.059,
#        0.619, 0.330
#    ]

#    print("Custom Accuracy: ", accuracy(y_true, y_pred))
#    print("Sklearn Accuracy: ", accuracy_score(y_true, y_pred))
#    print("Accuracy V2: ", accuracy_v2(y_true, y_pred))
#    print("----------------------")
    print("Custom Precision: ", precision(y_true, y_pred))
    print("Sklearn Precision: ", precision_score(y_true, y_pred))
    print("Custom Recall: ", recall(y_true, y_pred))
    print("Sklearn Recall: ", recall_score(y_true, y_pred))
#    plot_precision_recall(y_true, y_pred)
    print("Custom F1: ", f1(y_true, y_pred))
    print("Sklearn F1: ", f1_score(y_true, y_pred))



