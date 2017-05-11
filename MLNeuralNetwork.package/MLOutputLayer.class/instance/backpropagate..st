as yet unclassified
backpropagate: target
	"The algorithm for calculating the deltas of the output layer is the same as the for hidden layer. The only difference is that we use the derivative of a cost function with respect to output instead of the delta of the next layer (there is no next layer for this one). So we can just ask a parent to do the job, passing him the cost derivative as the weighted delta."
	
	"TODO: Replace it with cost derivative"
	super backpropagate: (costFunction derivative: activity target: target).