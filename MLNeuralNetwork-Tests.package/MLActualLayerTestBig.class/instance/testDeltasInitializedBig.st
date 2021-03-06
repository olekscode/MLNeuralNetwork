tests
testDeltasInitializedBig
	"comment stating purpose of message"

	| net layer deltas d rows cols |
	
	net := MLNeuralNetwork new initialize: #(784 800 10).
	layer := net inputLayer.
	
	[layer == net outputLayer] whileFalse: [ 
		layer := layer nextLayer.
		deltas := layer deltas.
		
		"It should be a PMMatrix"
		self assert: (deltas class) equals: PMMatrix.
		
		"The shape of deltas should be the same as the shape of the weight matrix"
		self assert: (deltas dimension)
			equals: (layer weights dimension).
			
		rows := deltas dimension x.
		cols := deltas dimension y.
			
		"It should be initialized with 0s"
		1 to: rows do: [ :i |
			1 to: cols do: [ :j |
				d := deltas at: i at: j.
				self assert: d equals: 0 ] ] ].