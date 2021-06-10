""" Metrics for classification and regression tasks """
from sklearn.metrics import accuracy_score, precision_score

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
    return acc

def precision(y_true, y_pred):
    """ Ratio of only correct positive predictions to all the data."""
    tp = true_positive(y_true, y_pred)
    tn = true_negative(y_true, y_pred)
    fp = false_positive(y_true, y_pred)
    fn = false_negative(y_true, y_pred)
    prec = tp / (tp+fp)
    return prec



if __name__ == "__main__":
    y_true = [0,1,1,1,1,0,0,1,0,1]
    y_pred = [0,1,0,1,1,1,0,0,1,1]

    print("Custom Accuracy: ", accuracy(y_true, y_pred))
    print("Sklearn Accuracy: ", accuracy_score(y_true, y_pred))
    
    tp = true_positive(y_true, y_pred)
    tn = true_negative(y_true, y_pred)
    fp = false_positive(y_true, y_pred)
    fn = false_negative(y_true, y_pred)
    print(f"TP: {tp}\t TN:{tn}\t FP:{fp}\t FN:{fn}")
    print("Accuracy V2: ", accuracy_v2(y_true, y_pred))
    print("----------------------")
    print("Custom Precision: ", precision(y_true, y_pred))
    print("Sklearn Precision: ", precision_score(y_true, y_pred))






