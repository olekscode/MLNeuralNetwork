as yet unclassified
forwardPropagate: thisInput
	"This message is being resend to the parent, MLActualLayer, which calculates the input, logit, and activation of this layer. This is the last layer, so the process of forward propagation ends here."

	super forwardPropagate: thisInput.
	
	"We need to store the activity to use it in the derivative of a cost function during backpropagation"
	activity := activationFunction evaluateAt: logit.