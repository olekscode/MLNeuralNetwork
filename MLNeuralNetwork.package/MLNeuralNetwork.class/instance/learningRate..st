as yet unclassified
learningRate: lr
	"Sets the learning rate for the whole network"
	
	| layer |
	layer := inputLayer.
	
	[layer = outputLayer] whileFalse: [ 
		layer := layer nextLayer.
		layer learningRate: lr ].