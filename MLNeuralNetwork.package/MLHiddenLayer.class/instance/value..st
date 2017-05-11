accessing
value: thisInput
	"Calculates the activity of this layer and sends it to the next one. This method does not store the input or activation in the corresponding instance variables. It is a faster version of forvardPropagate: method."
	
	nextLayer forwardPropagate: (activationFunction value: (weights * thisInput + biases)).