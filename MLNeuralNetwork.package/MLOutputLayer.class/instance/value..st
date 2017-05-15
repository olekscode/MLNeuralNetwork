accessing
value: thisInput
	"Calculates the activity of this layer. This method does not store the input, activity, or activation in the corresponding instance variables. It is a faster version of forvardPropagate: method. This is the last layer. Its activity is stored as the output of the whole network. It is faster to get it directly from the last layer, than to return it all the way beck, from layer to layer."

	activity := activationFunction evaluateAt: (weights * thisInput + biases).