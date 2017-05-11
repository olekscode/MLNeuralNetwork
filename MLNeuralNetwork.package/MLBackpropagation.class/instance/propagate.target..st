as yet unclassified
propagate: input target: output
	"Forward and backward propagates one input/output pair (example) through the neural net, updating the deltas. This method will be called for each example in a dataset and form one iteration. Online backpropagation algorithm will update the weights and reset the deltas after each iteration, batch backpropagation will do it after iterating through the whole dataset, and mini-batch - after iterating through a smaller subset of specified size"

	inputLayer forwardPropagate: input.
	outputLayer backpropagate: output.