tests
testInstanceCreation
	"Tests if MLNeuralNetwork provides is properly instantiated"
	
	| neurons net | 
	
	neurons := #(10 20 30 40).
	net := MLNeuralNetwork new: neurons.
	
	self assert: net size equals: neurons size.
	self assert: net shape equals: neurons.