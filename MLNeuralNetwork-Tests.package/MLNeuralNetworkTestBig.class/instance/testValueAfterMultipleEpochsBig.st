tests
testValueAfterMultipleEpochsBig
	"comment stating purpose of message"

	| net m epochs input targetOutput actualOutput random |
	
	net := MLNeuralNetwork new initialize: #(784 800 10).
	
	"Number of training examples"
	m := 10.
	epochs := 2.
	
	random := Random new.

	"Test on a different dataset every time"
	input := (1 to: m) collect: [ :i |
		((1 to: (net inputLayer size)) collect: [ :j|
			random next ]) asPMVector ].
	
	targetOutput := (1 to: m) collect: [ :i |
		((1 to: (net outputLayer size)) collect: [ :j|
			2 atRandom - 1 ]) asPMVector ].
	
	epochs timesRepeat: [
		net learn: input target: targetOutput ].
	
	input do: [ :exampleInput |
		actualOutput := net value: exampleInput.
		
		self assert: (actualOutput size) equals: (targetOutput size).
	
		actualOutput do: [ :v |
			"All output values should be numbers (not nil)"
			self assert: (v isNumber).
			
			"Output values should not be NaN (this happens)"
			self assert: (v isNaN not). ] ].