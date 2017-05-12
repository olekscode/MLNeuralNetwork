as yet unclassified
readLabels: path
	"Reads MNIST labels from an idx file specified by path using IdxReader. Returns an array of one-hot PMVectors"

	| reader array labels size |
	reader := IdxReader onStream: (File named: path) readStream.
	array := reader next.
	
	size := array size.
	labels := Array new: size.
	
	1 to: size do: [ :i |
		labels at: i put: (MLMnistReader onehot: (array at: i)) ].
	
	^ labels