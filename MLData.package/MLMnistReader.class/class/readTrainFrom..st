reading
readTrainFrom: basePath
	"Reads MNIST images and labels into a test dataset. This method assumes that the files are named exactly the same as on Yan LeCun's website and are located in a folder identified by basePath"

	| images labels dataset |
	images := self readImages: basePath, 'train-images.idx3-ubyte'.
	labels := self readLabels: basePath,  'train-labels.idx1-ubyte'.
	
	dataset := MLDataset new input: images output: labels.
	^ dataset normalizeInputs.