as yet unclassified
initialize: numberOfNeurons
	"comment stating purpose of message"

	super initialize: numberOfNeurons.
	
	"Default cost function"
	costFunction := MLSquaredError new.
	
	activity := 0.
	
	^ self