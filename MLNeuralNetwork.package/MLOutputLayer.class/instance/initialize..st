initialization
initialize: numberOfNeurons
	"comment stating purpose of message"

	super initialize: numberOfNeurons.
	
	"Default cost function"
	costFunction := MLCrossEntropy new.
	
	activity := 0.
	
	^ self