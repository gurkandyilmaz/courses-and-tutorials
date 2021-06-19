import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn

from sklearn import datasets
from sklearn import manifold

print(f"__file__ : {__file__}")
print(f"__name__ : {__name__}")


if __name__ == "__main__":
    pixel_values, targets = datasets.fetch_openml("mnist_784", version=1, return_X_y=True)
    targets = targets.astype(int)

    ## PLot a single pixel
    #single_image = pixel_values[1, :].reshape(28,28)
    #plt.figure(figsize=(12,8))
    #plt.imshow(single_image, cmap="gray")
    #plt.show()

    # Get a 2D representation of the data
    tsne = manifold.TSNE(n_components=2, random_state=12)
    print(f"TSNE fit_transform started.")
    transformed_data = tsne.fit_transform(pixel_values[:3000,:])
    print("TSNE fit_transform finished.")

    tsne_df = pd.DataFrame(np.column_stack((transformed_data, targets[:3000])), columns=["x", "y", "targets"])
    tsne_df.loc[:, "targets"] = tsne_df.targets.astype(int)
    
    grid = seaborn.FacetGrid(tsne_df, hue="targets", height=8)
    grid.map(plt.scatter, "x", "y").add_legend()
    plt.show()




