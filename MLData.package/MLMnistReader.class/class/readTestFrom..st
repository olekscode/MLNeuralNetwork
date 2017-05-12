as yet unclassified
readTestFrom: basePath
	"Reads MNIST images and labels into a training dataset. This method assumes that the files are named exactly the same as on Yan LeCun's website and are located in a folder identified by basePath"

	| images labels dataset |
	images := MLMnistReader readImages: basePath, 't10k-images.idx3-ubyte'.
	labels := MLMnistReader readLabels: basePath,  't10k-labels.idx1-ubyte'.
	
	dataset := MLDataset new input: images output: labels.
	^ dataset normalizeInputs.