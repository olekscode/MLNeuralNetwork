as yet unclassified
forwardPropagate: thisInput
	"This message is being resend to the parent, MLActualLayer, which calculates the input, logit, and activation of this layer. Then the message is passed to the next layer"

	super forwardPropagate: thisInput.
	
	"We don't need to store the activity of the hidden layer. We just calculate it and pass it as an input to the next layer"
	nextLayer forwardPropagate: (activationFunction evaluateAt: logit).