""" Metrics for classification and regression tasks """

def accuracy(y_true, y_pred):
    #TODO check if the lists have the same length

    true_counter = 0
    for y_t, y_p in zip(y_true, y_pred):
        if y_t == y_p:
            true_counter += 1

    return true_counter / len(y_true)



if __name__ == "__main__":
    y_true = [1,0,1,0,0,0,0,1,0,0]
    y_pred = [0,0,0,0,0,0,0,0,0,0]

    print(accuracy(y_true, y_pred))
