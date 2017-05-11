as yet unclassified
readMnistLabels: path
	"comment stating purpose of message"

	| reader array labels size |
	reader := IdxReader onStream: (File named: path) readStream.
	array := reader next.
	
	size := array size.
	labels := Array new: size.
	
	1 to: size do: [ :i |
		labels at: i put: (MLMnistReader decToBin: (array at: i)) ].
	
	^ labels