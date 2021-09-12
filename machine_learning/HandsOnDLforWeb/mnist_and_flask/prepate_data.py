from pathlib import Path
from datetime import datetime
import time

import numpy as np
import matplotlib.pyplot as plt

from config import MNIST, APP

def loadImageFile(image_file: Path) -> np.ndarray:
    """Loads the content of MNIST image file into a list."""
    all_images = []
    with open(image_file, 'rb') as file:
        file.read(16)
        while True:
            try:
                single_image = []
                for _ in range(28*28):
                    pixel = ord(file.read(1))
                    single_image.append(pixel / 255)
                all_images.append(single_image)
            except:
                break
    return np.array(all_images)

def loadLabelFile(label_file: Path) -> np.ndarray:
    """Loads the labels of the MNIST images into an numpy array."""
    all_labels = []
    with open(label_file, 'rb') as file:
        file.read(8)
        while True:
            row = [0 for _ in range(10)]
            try:
                label = ord(file.read(1))
                row[label] = 1
                all_labels.append(row)
            except:
                break
    return np.array(all_labels)

def generate_images(images_array: np.ndarray, label: np.ndarray, save : bool=False) -> None:
    """Shows a single image representing the digit number given in images_array."""
    image = np.reshape(images_array, (28, 28)) * 255
    image = image.astype(np.uint8)
    plt.axis('off')
    plt.imshow(image, interpolation='nearest', cmap='gray')
    #plt.show()
    if save:
        label = np.where(label == 1)[0][0]
        time.sleep(1) 
        now = datetime.now().strftime('%H%M%S')
        image_filename = f'image_{now}_{label}.png'
        plt.imsave(fname=APP.MEDIA/image_filename, arr=image, cmap='gray_r', format='png')
    return
    
if __name__ == "__main__":
    idx = 2
    test_data = MNIST.TEST_DATA_FILE
    test_label = MNIST.TEST_LABELS_FILE
    test_images = loadImageFile(test_data)
    test_labels = loadLabelFile(test_label)
    print(test_images[idx].shape, test_labels)
    print(test_labels[idx])
    ids = np.random.choice(test_labels.shape[0], 20)
    for idx in ids:
        generate_images(test_images[idx], test_labels[idx], save=True)


