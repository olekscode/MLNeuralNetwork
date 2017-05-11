as yet unclassified
value: input
	"comment stating purpose of message"
	
	inputLayer forwardPropagate: input.
	
	^ outputLayer activity.