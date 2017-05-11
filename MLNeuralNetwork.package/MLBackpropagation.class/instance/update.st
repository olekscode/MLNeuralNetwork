updating
update
	"Updates the weights using deltas calculated on previous steps, then resets these deltas (sets them to 0s). Online backpropagation algorithm will call this method after each iteration, batch backpropagation will do it after iterating through the whole dataset, and mini-batch - after iterating through a smaller subset of specified size"

	inputLayer update.
	inputLayer resetDeltas.