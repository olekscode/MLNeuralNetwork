as yet unclassified
forwardPropagate: thisInput
	"Calculates the activity and activation of this layer and stores them in the corresponding instance variables. They will be used during backpropagation.
	Note: MLHiddenLayer will also pass this message to the next layer, and the MLOutputLayer will only execute this (it doesn't have this message reimplemented)"

	"We store the input to use it during the weight update"
	input := thisInput.
	
	"We store the logit to use it during backpropagation"
	logit := weights * input + biases.
	
	"We need to store the activity only for the output layer, but I think that it would be faster to store it than to call the method of the parent at each step"