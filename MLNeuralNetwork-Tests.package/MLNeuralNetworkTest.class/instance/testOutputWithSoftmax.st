tests
testOutputWithSoftmax
	"comment stating purpose of message"

	| net input output random |
	
	net := MLNeuralNetwork new initialize: #(2 3 2).
	net outputLayer activationFunction: (MLSoftmax new).
	
	random := Random new.
	
	"Test of a different input vector every time"
	input := ((1 to: (net inputLayer size)) collect: [ :i |
			random next ]) asPMVector.
	
	output := net value: input.
	
	self assert: (output size) equals: 2.
	
	"Values of softmax should be probabilistic"
	output do: [ :v |
		self assert: (v <= 1).
		self assert: (v >= 0). ].
	
	"And they should sum up to 1"
	self assert: (output sum) closeTo: 1.