accessing
activationNames
	"Returns the array of the names of activation functions of each layer"
	
	| layer actNames i |
	
	"Input layer has no weights, and therefore no activation function"
	layer := inputLayer nextLayer.
	
	i := 1.
	actNames := Array new: (self size - 1).
	actNames at: i put: layer activationName.
	
	[layer = outputLayer] whileFalse: [ 
		i := i + 1.
		layer := layer nextLayer.
		actNames at: i put: layer activationName ].
	
	^ actNames