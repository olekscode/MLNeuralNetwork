private
readImages: path
	"Reads MNIST images from an idx file specified by path using IdxReader. Retuns a matrix of images unroled into PMVectors with 784 elements"

	| reader matrix |
	reader := IdxReader onStream: (File named: path) readStream.
	matrix := reader next.
	
	^ matrix collect: [ :v | self unroll: v ].