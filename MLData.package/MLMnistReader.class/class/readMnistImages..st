as yet unclassified
readMnistImages: path
	"comment stating purpose of message"

	| reader matrix images size |
	reader := IdxReader onStream: (File named: path) readStream.
	matrix := reader next.
	
	size := matrix size.
	images := Array new: size.
	
	1 to: size do: [ :i |
		images at: i put: (MLMnistReader unrol: (matrix at: i)) ].
	
	^ images