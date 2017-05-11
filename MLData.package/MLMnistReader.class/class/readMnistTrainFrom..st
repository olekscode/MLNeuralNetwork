as yet unclassified
readMnistTrainFrom: basePath
	"comment stating purpose of message"

	| images labels dataset |
	images := MLMnistReader readMnistImages: basePath, 'train-images.idx3-ubyte'.
	labels := MLMnistReader readMnistLabels: basePath,  'train-labels.idx1-ubyte'.
	
	dataset := MLDataset new input: images output: labels.
	
	^ dataset normalizeInputs.