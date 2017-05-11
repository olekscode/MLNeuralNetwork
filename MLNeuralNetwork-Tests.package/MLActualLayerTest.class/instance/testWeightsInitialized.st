tests
testWeightsInitialized
	"comment stating purpose of message"

	| net layer weights w rows cols |
	
	net := MLNeuralNetwork new initialize: #(2 3 2).
	layer := net inputLayer.
	
	[layer == net outputLayer] whileFalse: [ 
		layer := layer nextLayer.
		weights := layer weights.
		
		"It should be a DhbMatrix"
		self assert: (weights class) equals: PMMatrix.
			
		rows := weights dimension x.
		cols := weights dimension y.
		
		"The shape (dimension) of the weight matrix should fit the sizes of two layers it connects"
		self assert: rows equals: (layer size).
		self assert: cols equals: (layer prevLayer size).
			
		1 to: rows do: [ :i |
			1 to: cols do: [ :j |
				w := weights at: i at: j.
				
				"All weights should be numbers (not nil)"
				self assert: (w isNumber).
				
				"They should not be NaN (this happens)"
				self assert: (w isNaN not). ] ] ].