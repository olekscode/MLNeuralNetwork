accessing
learningRates
	"Returns the array of learning rates on each layer"
	
	| layer learningRates i |
	
	"Input layer has no weights, and therefore no learning rate"
	layer := inputLayer nextLayer.
	
	i := 1.
	learningRates := Array new: (self size - 1).
	learningRates at: i put: layer learningRate.
	
	[layer = outputLayer] whileFalse: [ 
		i := i + 1.
		layer := layer nextLayer.
		learningRates at: i put: layer learningRate ].
	
	^ learningRates