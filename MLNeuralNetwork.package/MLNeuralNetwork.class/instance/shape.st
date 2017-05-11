as yet unclassified
shape
	"comment stating purpose of message"

	| layer shape |
	layer := inputLayer.
	shape := { layer size }.

	[ layer == outputLayer ]
		whileFalse: [ 
			layer := layer nextLayer.
			shape := shape copyWith: (layer size) ].
		
	^ shape