This class can be used to visualize MNIST images

Example usage: 
-=-=-=-=-=-=-=-=-=-=-=-=
"Reading MNIST training dataset"
reader := MLDataReader new.
images := reader readMnistImages: 'mnist/train-images.idx3-ubyte'.
labels := reader readMnistLabels: 'mnist/train-labels.idx1-ubyte'.

"Choosing the random image"
img := trainingData randomPair input.

"Visualizing that image"
MLMnistVisualizer show: img.
-=-=-=-=-=-=-=-=-=-=-=-=

