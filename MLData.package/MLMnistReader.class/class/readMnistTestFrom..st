as yet unclassified
readMnistTestFrom: basePath
	"comment stating purpose of message"

	| images labels dataset |
	images := MLMnistReader readMnistImages: basePath, 't10k-images.idx3-ubyte'.
	labels := MLMnistReader readMnistLabels: basePath,  't10k-labels.idx1-ubyte'.
	
	dataset := MLDataset new input: images output: labels.
	^ dataset normalizeInputs.