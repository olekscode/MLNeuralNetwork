tests
testLearning
	"comment stating purpose of message"

	| net m epochs input output random costBefore costAfter |
	
	net := MLNeuralNetwork new initialize: #(2 3 2).
	
	"Number of training examples"
	m := 10.
	epochs := 1.
	
	random := Random new.

	"Test of a different dataset every time"
	input := (1 to: m) collect: [ :i |
		((1 to: (net inputLayer size)) collect: [ :j|
			random next ]) asPMVector ].
	
	output := (1 to: m) collect: [ :i |
		((1 to: (net outputLayer size)) collect: [ :j|
			2 atRandom - 1 ]) asPMVector ].
	
	costBefore := net cost: input target: output.
	
	epochs timesRepeat: [ 
		net learn: input target: output ].
	
	costAfter := net cost: input target: output.
	
	self assert: (costBefore > costAfter).