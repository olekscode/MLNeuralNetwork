as yet unclassified
update
	"Performs the weight update using the deltas calculated during backpropagation and terminates it (there is no nextLayer).
	MLHiddenLayer overrides this method. It calls the method of its parent (this one), and then passes the message to the next layer. MLOutputLayer doesn't have a next layer, so for it only this method will be executed.
	It is done by parent to avoid code duplication"
	
	weights := weights - (learningRate * deltas).
	biases := biases - (learningRate * biasDeltas).