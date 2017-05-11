as yet unclassified
backpropagate: thisDelta
	"Terminates backpropagation. MLInputLayer is a dummy layer that doesn't have weights and doesn't need deltas"

	"Perhaps we should return something different here"
	^ self.