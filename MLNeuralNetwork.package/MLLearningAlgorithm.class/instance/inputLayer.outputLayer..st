as yet unclassified
inputLayer: inp outputLayer: outp
	"This acts as a constructor"
	
	super initialize.
	
	inputLayer := inp.
	outputLayer := outp.
	
	"This way if user asks for cost history before training the network, he will get an empty array (cost history is empty), which is better than sending him nil"
	"LinkedList is the fastest collection for appending new values"
	costHistory := LinkedList new.
	
	^ self.