initialization
initialize: shape
	"comment stating purpose of message"

	| layer |
	super initialize.
	
	inputLayer := MLInputLayer new initialize: (shape first).
	outputLayer := MLOutputLayer new initialize: (shape last).
	
	layer := inputLayer.
	
	2 to: (shape size - 1) do: [ :i |
		layer nextLayer: (MLHiddenLayer new initialize: (shape at: i)).
		layer nextLayer prevLayer: layer.
		layer := layer nextLayer. ].
	
	layer nextLayer: outputLayer.
	outputLayer prevLayer: layer.
	
	"Default learning algorithm"
	learningAlgorithm := MLMiniBatchBackpropagation new
		inputLayer: inputLayer 
		outputLayer: outputLayer.
		
	"Default batch size"
	learningAlgorithm batchSize: 100.
	
	^ self
	
