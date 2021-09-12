from pathlib import Path

import numpy as np
import matplotlib.pyplot as plt

from config import MNIST

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

def generate_images(images_array: np.ndarray) -> None:
    """Shows a single image representing the digit number given in images_array."""
    image = images_array.reshape(28, 28).astype(np.uint8)
    image *= 255
    plt.imshow(image, interpolation='nearest', cmap='gray')
    plt.show()
    return
    
if __name__ == "__main__":
    test_data = MNIST.TEST_DATA_FILE
    test_label = MNIST.TEST_LABELS_FILE
    all_images = loadImageFile(test_data)
    all_labels = loadLabelFile(test_label)
    print(all_images[0].shape)
    print(all_labels[0], all_labels.shape)
    #generate_images(all_images[0])

