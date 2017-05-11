accessing
size
	"Returns the number of layers"

	| layer size |
	layer := inputLayer.
	size := 1.

	[ layer == outputLayer ]
		whileFalse: [ 
			layer := layer nextLayer.
			size := size + 1 ].
		
	^ size