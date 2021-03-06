"""Custom implementations for metrics in classification and regression tasks."""
import numpy as np
import matplotlib.pyplot as plt
from sklearn import metrics
from collections import Counter

class CustomMetrics:
    """Metrics for binary, multiclass classification and regression."""
    def __init__(self):
        pass

    def _true_positive(self, y_true, y_pred):
        """positive class is represented as 1."""
        true_counter = 0
        for idx in range(len(y_true)):
            if (y_pred[idx] == 1) and  (y_true[idx] == 1):
                true_counter += 1
        
        return true_counter
    
    def _true_negative(self, y_true, y_pred):
        """positive class is represented as 1."""
        true_counter = 0
        for idx in range(len(y_true)):
            if (y_pred[idx] == 0) and  (y_true[idx] == 0):
                true_counter += 1
        
        return true_counter
    
    def _false_positive(self, y_true, y_pred):
        """positive class is represented as 1."""
        true_counter = 0
        for idx in range(len(y_true)):
            if (y_pred[idx] == 1) and  (y_true[idx] == 0):
                true_counter += 1
        
        return true_counter
    
    def _false_negative(self, y_true, y_pred):
        """positive class is represented as 1."""
        true_counter = 0
        for idx in range(len(y_true)):
            if (y_pred[idx] == 0) and  (y_true[idx] == 1):
                true_counter += 1
        
        return true_counter

    def accuracy(self, y_true, y_pred):
        """Compare two arrays element-wise and return accuracy score."""
        #TODO check if the lists have the same length
        true_counter = 0
        for y_t, y_p in zip(y_true, y_pred):
            if y_t == y_p:
                true_counter += 1
    
        return true_counter/len(y_true)

    def accuracy_v2(self, y_true, y_pred):
        """ Ratio of all the correct predictions to all the data."""
        tp = self._true_positive(y_true, y_pred)
        tn = self._true_negative(y_true, y_pred)
        fp = self._false_positive(y_true, y_pred)
        fn = self._false_negative(y_true, y_pred)
        
        return (tp+tn) / (tp+tn+fp+fn)

    def precision(self, y_true, y_pred, average="binary"):
        """ Ratio of only correct positive predictions to the data predicted as positive."""
        num_labels = len(np.unique(y_true))
        if average == "binary":
            tp = self._true_positive(y_true, y_pred)
            fp = self._false_positive(y_true, y_pred)
            try:
                prec = tp / (tp+fp)
            except ZeroDivisionError:
                return 1.0
            
            return prec
        
        elif average == "macro":
            """Calculate precision for all classes individually and then average them."""
            precisions = []
            for label in range(num_labels):
                temp_true = [1 if data == label else 0 for data in y_true]
                temp_pred = [1 if data == label else 0 for data in y_pred]
                precisions.append(self.precision(temp_true, temp_pred, average="binary"))

            return sum(precisions) / len(precisions)
        
        elif average == "micro":
            """Calculate class wise true positive and false positive, add them to get overall precision."""
            tp, fp = 0, 0
            for label in range(num_labels):
                temp_true = [1 if data == label else 0 for data in y_true]
                temp_pred = [1 if data == label else 0 for data in y_pred]
                tp += self._true_positive(temp_true, temp_pred)
                fp += self._false_positive(temp_true, temp_pred)
            
            return tp / (tp + fp)
        
        elif average == "weighted":
            """Same as macro-averaged but average depends on the number of items in each class."""
            label_counts = Counter(y_true)
            precision, tp, fp = 0, 0, 0
        
            for label in range(num_labels):
                temp_true = [1 if data == label else 0 for data in y_true]
                temp_pred = [1 if data == label else 0 for data in y_pred]
                tp = self._true_positive(temp_true, temp_pred)
                fp = self._false_positive(temp_true, temp_pred)
                
                temp_precision = tp / (tp + fp)
                precision += label_counts[label] * temp_precision
        
            return precision / len(y_true)
    
    def recall(self, y_true, y_pred, average="binary"):
        num_labels = len(np.unique(y_true))
        if average == "binary":
            """Ratio of only correct positive predictions to the data that is actually positive.""" 
            tp = self._true_positive(y_true, y_pred)
            fn = self._false_negative(y_true, y_pred)
        
            return tp / (tp+fn)

        elif average == "macro":
            """Calculate recall for each individual label then average them."""
            recall_scores = []
            for label in range(num_labels):
                temp_true = [1 if data == label else 0 for data in y_true]
                temp_pred = [1 if data == label else 0 for data in y_pred]
                recall_scores.append(self.recall(temp_true, temp_pred, average="binary")) 
        
            return sum(recall_scores) / len(recall_scores)

        elif average == "micro":
            """Calculate class wise true positive and false positive, add them to get overall precision."""
            tp, fn = 0, 0
            for label in range(num_labels):
                temp_true = [1 if data == label else 0 for data in y_true]
                temp_pred = [1 if data == label else 0 for data in y_pred]
                tp += self._true_positive(temp_true, temp_pred)
                fn += self._false_negative(temp_true, temp_pred)
    
            return tp / (tp + fn)

        elif average == "weighted":
            """Same as macro-averaged recall but average depends on the number of items in each class."""
            num_labels = len(np.unique(y_true))
            label_counts = Counter(y_true)
            recall, tp, fn = 0,0,0
            for label in range(num_labels):
                temp_true = [1 if data == label else 0 for data in y_true]
                temp_pred = [1 if data == label else 0 for data in y_pred]
                tp = self._true_positive(temp_true, temp_pred)
                fn = self._false_negative(temp_true, temp_pred)
        
                temp_recall = tp / (tp+fn)
                recall += temp_recall * label_counts[label]
        
            return recall / len(y_true)

    def f1(self, y_true, y_pred, average="binary"):
        num_labels = len(np.unique(y_true))
        if average == "binary":
            """ Combine precision and recall into single metric.
                f1 = 2*Precision*Recall / (Precision + Recall)
            """ 
            tp = self._true_positive(y_true, y_pred)
            fp = self._false_positive(y_true, y_pred)
            fn = self._false_negative(y_true, y_pred)
            f1 = 2*tp / (2*tp + fp + fn)
        
            return f1

        elif average == "macro":
            """Calculate f1 score for each label separately then average them."""
            f1_scores = []
            tp, fp, fn = 0,0,0
            for label in range(num_labels):
                temp_true = [1 if data == label else 0 for data in y_true]
                temp_pred = [1 if data == label else 0 for data in y_pred]
                tp = self._true_positive(temp_true, temp_pred)
                fp = self._false_positive(temp_true, temp_pred)
                fn = self._false_negative(temp_true, temp_pred)
                temp_f1 = 2*tp / (2*tp + fp + fn)
                f1_scores.append(temp_f1)
        
            return sum(f1_scores) / len(f1_scores)


        elif average == "micro":
            """Add true positive, false positive and false negative for each label then calculate f1."""
            tp, fp, fn = 0,0,0
            for label in range(num_labels):
                temp_true = [1 if data == label else 0 for data in y_true]
                temp_pred = [1 if data == label else 0 for data in y_pred]
                tp += self._true_positive(temp_true, temp_pred)
                fp += self._false_positive(temp_true, temp_pred)
                fn += self._false_negative(temp_true, temp_pred)
            
            return 2*tp / (2*tp + fp + fn)

        elif average == "weighted":
            """Similar to macro f1 but multiply f1 by the label count of the corresponding label."""
            label_counts = Counter(y_true)
            f1, tp, fp, fn = 0,0,0,0
            for label in range(num_labels):
                temp_true = [1 if data == label else 0 for data in y_true]
                temp_pred = [1 if data == label else 0 for data in y_pred]
                tp = self._true_positive(temp_true, temp_pred)
                fp = self._false_positive(temp_true, temp_pred)
                fn = self._false_negative(temp_true, temp_pred)
                temp_f1 = 2*tp / (2*tp + fp + fn)
                f1 += temp_f1 * label_counts[label]        
            
            return f1 / len(y_true)

    def log_loss(self, y_true, y_pred_proba, draw=False):
        """Compute log loss. It penalizes predictions that are too high or low.
            Log loss = -1*(target*log(prediction) + (1-target)*log(1-prediction))    
        """
        epsilon = 1e-15 # clip predictions below epsilon and above 1-epsilon
        losses = []
        for y_t, y_p in zip(y_true, y_pred_proba):
            y_p = np.clip(y_p, epsilon, 1 - epsilon)
            loss = -1.0 * (y_t * np.log(y_p) + (1 - y_t) * np.log(1 - y_p))
            losses.append(loss)
        
        if draw:
            plt.figure(figsize=(12,8))
            plt.scatter(y_pred_proba, losses)
            plt.xlabel("proba")
            plt.ylabel("losses")
            plt.show()
        
        return sum(losses) / len(losses)

    def mean_absolute_error(self, y_true, y_pred):
        error = 0.0
        for y_t, y_p in zip(y_true, y_pred):
            error += abs(y_t - y_p)
        
        return error / len(y_true)

    def mean_squared_error(self, y_true, y_pred, square_root=False):
        error = 0.0
        for y_t, y_p in zip(y_true, y_pred):
            error += (y_t - y_p)**2

        if not square_root:
            # return mean squared error
            return error / len(y_true)
        else:
            # return root mse
            return (error / len(y_true))**0.5
    
    def r2(self, y_true, y_pred):
        """Calculates the coefficient of determination."""
        yt_mean = sum(y_true) / len(y_true)
        numerator, denominator = 0, 0
        for y_t, y_p in zip(y_true, y_pred):
            numerator += (y_t - y_p)**2
            denominator += (y_t - yt_mean)**2

        return 1 - (numerator/denominator)


class MultiLabelMetrics:
    def __init(self):
        pass
    
    def precision_at_k(self, y_true, y_pred, k):
        """Calculates precision at k for a single sample."""
        if k == 0:
            return 0
        
        y_pred = y_pred[:k]
        pred_set = set(y_pred)
        true_set = set(y_true)
        common = pred_set.intersection(true_set)
        
        return len(common) / len(y_pred[:k])
    
    def avg_precision_at_k(self, y_true, y_pred, k):
        """Calculates the average precision at k for a single sample."""
        preds = []
        for i in range(1, k+1):
            preds.append(self.precision_at_k(y_true, y_pred, i))
        
        return np.mean(preds)

    def mean_avg_precision_at_k(self, y_true, y_pred, k):
        apk_values = [] 
        for y_t, y_p in zip(y_true, y_pred):
            apk_values.append(self.avg_precision_at_k(y_t, y_p, k))
    
        return np.mean(apk_values)

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
        precisions.append(CustomMetrics().precision(y_true, y_pred))
        recalls.append(CustomMetrics().recall(y_true, y_pred))
    
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
    custom_metrics = CustomMetrics()
    multilabel_metrics = MultiLabelMetrics() 

#   Binary Output Case
#    y_true = [1,0,1,1,0,0,0,0,1,0,1,0,0,1,0,1,0,1,1,0]
#    y_pred = [1,1,1,0,1,0,1,1,0,1,1,0,0,1,1,1,1,0,1,0]
#    y_pred_proba = [0.1, 0.98, 0.9, 0.15, 0.33, 0.42, 0.5, 0.16, 0.8, 0.7, 
#                    0.8, 0.25, 0.77, 0.4, 0.6, 0.3, 0.56, 0.85, 0.97, 0.22]
#    print("Sklearn r2: ", metrics.r2_score(y_true, y_pred_proba))
#    print("Custom r2: ", custom_metrics.r2(y_true, y_pred_proba))

#   Multi-class ouputs, 3 classes.
#    y_true = [0,1,1,2,2,2,0,0,0,1,1,1,1,0,2,1,1,2]
#    y_pred = [1,0,1,2,2,1,2,1,1,1,0,2,0,0,2,1,2,0]
#
#    print("Sklearn Macro-Averaged Precision: ", metrics.precision_score(y_true, y_pred, average="macro"))
#    print("Custom Macro-Averaged Precision: ", custom_metrics.precision(y_true, y_pred, average="macro"))
#    plot_confusion_matrix(y_true, y_pred)

#   Multi Label case 5 unique labels in total.
    y_true = [[2,1,3],[0,2],[1],[3,2],[1,0],[]]
    y_pred = [[0,1,2],[1],[0,2,3],[2,3,4,0],[0,1,2],[0]]
    print("MeanAvgPrec @k: ", multilabel_metrics.mean_avg_precision_at_k(y_true, y_pred, 4))




