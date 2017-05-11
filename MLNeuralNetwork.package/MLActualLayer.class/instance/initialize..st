as yet unclassified
initialize: numberOfNeurons
	"comment stating purpose of message"
	
	super initialize: numberOfNeurons.
	
	"The initialization of weights and deltas is done when the layer is connected to the previous layer (when prevLayer: is called)"
	self initializeBiases.
	
	"Default activation function and learning rate"
	activationFunction := MLLogisticFunction new.
	learningRate := 0.1.
	
	^ self