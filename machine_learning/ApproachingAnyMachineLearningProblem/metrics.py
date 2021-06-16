""" Metrics for classification and regression tasks """
import numpy as np
import matplotlib.pyplot as plt
from sklearn import metrics
from collections import Counter

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

def log_loss(y_true, y_pred_proba):
    """Compute log loss. It penalizes predictions that are too high or low.
        Log loss = -1*(target*log(prediction) + (1-target)*log(1-prediction))    
    """
    epsilon = 1e-15 # clip predictions below epsilon and above 1-epsilon
    losses = []
    for y_t, y_p in zip(y_true, y_pred_proba):
        y_p = np.clip(y_p, epsilon, 1 - epsilon)
        loss = -1.0 * (y_t * np.log(y_p) + (1 - y_t) * np.log(1 - y_p))
        losses.append(loss)
    
    print(losses)
    plt.figure(figsize=(12,8))
    plt.scatter(y_pred_proba, losses)
    plt.xlabel("proba")
    plt.ylabel("losses")
    plt.show()
    
    return np.mean(losses)

# Multi-class Metrics: BEGIN
def macro_averaged_precision(y_true, y_pred):
    """Calculate precision for all classes individually and then average them."""
    num_labels = len(np.unique(y_true))
    precisions = []
    for label in range(num_labels):
        temp_true = [1 if data == label else 0 for data in y_true]
        temp_pred = [1 if data == label else 0 for data in y_pred]
        precisions.append(precision(temp_true, temp_pred))

    return np.mean(precisions)

def micro_averaged_precision(y_true, y_pred):
    """Calculate class wise true positive and false positive, add them to get overall precision."""
    num_labels = len(np.unique(y_true)) 
    tp, fp = 0, 0
    for label in range(num_labels):
        temp_true = [1 if data == label else 0 for data in y_true]
        temp_pred = [1 if data == label else 0 for data in y_pred]
        tp += true_positive(temp_true, temp_pred)
        fp += false_positive(temp_true, temp_pred)
    
    return tp / (tp + fp)

def weighted_precision(y_true, y_pred):
    """Same as macro-averaged but average depends on the number of items in each class."""
    num_labels = len(np.unique(y_true))
    label_counts = Counter(y_true)
    
    precision, tp, fp = 0, 0, 0

    for label in range(num_labels):
        temp_true = [1 if data == label else 0 for data in y_true]
        temp_pred = [1 if data == label else 0 for data in y_pred]
        tp = true_positive(temp_true, temp_pred)
        fp = false_positive(temp_true, temp_pred)
        
        temp_precision = tp / (tp + fp)
        weighted_precision = label_counts[label] * temp_precision
        precision += weighted_precision

    return precision / len(y_true)

def macro_averaged_recall(y_true, y_pred):
    """Calculate recall for each individual label then average them."""
    num_labels = len(np.unique(y_true))
    recall_scores = []
    for label in range(num_labels):
        temp_true = [1 if data == label else 0 for data in y_true]
        temp_pred = [1 if data == label else 0 for data in y_pred]
        recall_scores.append(recall(temp_true, temp_pred)) 

    return np.mean(recall_scores)

def micro_averaged_recall(y_true, y_pred):
    """Calculate class wise true positive and false positive, add them to get overall precision."""
    num_labels = len(np.unique(y_true)) 
    tp, fn = 0, 0
    for label in range(num_labels):
        temp_true = [1 if data == label else 0 for data in y_true]
        temp_pred = [1 if data == label else 0 for data in y_pred]
        tp += true_positive(temp_true, temp_pred)
        fn += false_negative(temp_true, temp_pred)
    
    return tp / (tp + fn)


def weighted_recall(y_true, y_pred):
    #TODO
    pass

def macro_averaged_f1(y_true, y_pred):
    #TODO
    pass

def micro_averaged_f1(y_true, y_pred):
    #TODO
    pass

def weighted_f1(y_true, y_pred):
    #TODO
    pass



# Multi-class Metrics: END

# Confusion Matrix: BEGIN
def plot_confusion_matrix(y_true, y_pred):
    import seaborn
    cm = metrics.confusion_matrix(y_true, y_pred)

    plt.figure(figsize=(10,10))
    cmap = seaborn.cubehelix_palette(50, hue=0.05, light=0.9, dark=0, rot=0, as_cmap=True)
    seaborn.set(font_scale=2.5)
    seaborn.heatmap(cm, annot=True, cmap=cmap, cbar=False)
    plt.ylabel("Actual Labels", fontsize=20)
    plt.xlabel("Predicted Labels", fontsize=20)
    plt.show()

# Confusion Matrix: END

# Helpers: BEGIN
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

# Helpers: END

if __name__ == "__main__":
    # Binary Output Case
#    y_true = [1,0,1,1,0,0,0,0,1,0,1,0,0,1,0,1,0,1,1,0]
#    y_pred = [1,0,1,0,1,0,1,1,0,1,1,0,0,1,0,1,1,0,1,0]
#    y_pred_proba = [0.1, 0.98, 0.9, 0.15, 0.33, 0.42, 0.5, 0.16, 0.8, 0.7, 
#                    0.8, 0.25, 0.77, 0.4, 0.6, 0.3, 0.56, 0.85, 0.97, 0.22]
#    print("Custom Accuracy: ", accuracy(y_true, y_pred))
#    print("Sklearn Accuracy: ", accuracy_score(y_true, y_pred))
#    print("Accuracy V2: ", accuracy_v2(y_true, y_pred))
#    print("Custom Precision: ", precision(y_true, y_pred))
#    print("Sklearn Precision: ", metrics.precision_score(y_true, y_pred))
#    print("Custom Recall: ", recall(y_true, y_pred))
#    print("Sklearn Recall: ", metrics.recall_score(y_true, y_pred))
#    print("Custom F1: ", f1(y_true, y_pred))
#    print("Sklearn F1: ", metrics.f1_score(y_true, y_pred))
#    print("Custom Log loss: ", log_loss(y_true, y_pred_proba))
#    print("Sklearn Log loss: ", metrics.log_loss(y_true, y_pred_proba))

    # Multi-class ouputs, 3 classes.
    y_true = [0,1,1,2,2,2,0,0,0,1]
    y_pred = [0,0,1,2,2,1,2,1,0,1]

#    print("Sklearn Macro-Averaged Precision: ", metrics.precision_score(y_true, y_pred, average="macro"))
#    print("Custom Macro-Averaged Precision: ", macro_averaged_precision(y_true, y_pred))
#    print("Sklearn Micro-Averaged Precision: ", metrics.precision_score(y_true, y_pred, average="micro"))
#    print("Custom Micro-Averaged Precision: ", micro_averaged_precision(y_true, y_pred))
#    print("Sklearn Weighted Precision: ", metrics.precision_score(y_true, y_pred, average="weighted"))
#    print("Custom Weighted Precision: ", weighted_precision(y_true, y_pred))

#    print("Sklearn Macro-Averaged Recall: ", metrics.recall_score(y_true, y_pred, average="macro"))
#    print("Custom Macro-Averaged Recall: ", macro_averaged_recall(y_true, y_pred))
    print("Sklearn Micro-Averaged Recall: ", metrics.recall_score(y_true, y_pred, average="micro"))
    print("Custom Micro-Averaged Recall: ", micro_averaged_recall(y_true, y_pred))
#    plot_confusion_matrix(y_true, y_pred)
