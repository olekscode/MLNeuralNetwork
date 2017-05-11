tests
testDeltasAfterMultipleEpochs
	"comment stating purpose of message"

	| net layer deltas d rows cols m epochs input output random |
	
	net := MLNeuralNetwork new initialize: #(2 3 2).
	
	"Number of training examples"
	m := 10.
	epochs := 2.

	random := Random new.

	"Test of a different dataset every time"
	input := (1 to: m) collect: [ :i |
		((1 to: (net inputLayer size)) collect: [ :j|
			random next ]) asPMVector ].
	
	output := (1 to: m) collect: [ :i |
		((1 to: (net outputLayer size)) collect: [ :j|
			2 atRandom - 1 ]) asPMVector ].
	
	epochs timesRepeat: [
		net learn: input target: output ].
	
	layer := net inputLayer.
	
	[layer == net outputLayer] whileFalse: [ 
		layer := layer nextLayer.
		deltas := layer deltas.
		
		"It should be a DhbMatrix"
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
				
				"All deltas should be numbers (not nil)"
				self assert: (d isNumber).
				
				"They should not be NaN (this happens)"
				self assert: (d isNaN not). ] ] ].