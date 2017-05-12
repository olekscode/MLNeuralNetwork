as yet unclassified
readImages: path
	"Reads MNIST images from an idx file specified by path using IdxReader. Retuns a matrix of images unroled into PMVectors with 784 elements"

	| reader matrix images size |
	reader := IdxReader onStream: (File named: path) readStream.
	matrix := reader next.
	
	size := matrix size.
	images := Array new: size.
	
	1 to: size do: [ :i |
		images at: i put: (MLMnistReader unroll: (matrix at: i)) ].
	
	^ images