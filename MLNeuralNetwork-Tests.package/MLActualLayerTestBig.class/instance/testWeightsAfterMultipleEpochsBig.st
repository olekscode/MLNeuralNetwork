tests
testWeightsAfterMultipleEpochsBig
	"comment stating purpose of message"

	| net layer weights w rows cols m epochs input output random |
	
	net := MLNeuralNetwork new initialize: #(784 800 10).
	
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
		weights := layer weights.
		
		"It should be a PMMatrix"
		self assert: (weights class) equals: PMMatrix.
			
		rows := layer weights dimension x.
		cols := layer weights dimension y.
		
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