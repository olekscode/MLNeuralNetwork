private
readLabels: path
	"Reads MNIST labels from an idx file specified by path using IdxReader. Returns an array of one-hot PMVectors"

	| reader array |
	reader := IdxReader onStream: (File named: path) readStream.
	array := reader next.
	
	^ array collect: [ :v | self onehot: v ].