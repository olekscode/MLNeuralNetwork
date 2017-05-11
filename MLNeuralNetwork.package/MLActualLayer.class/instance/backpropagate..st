as yet unclassified
backpropagate: nextWeightedDeltaSmall
	"Each subclass overrides this method. It calculates its delta and then calls the method of parent (this one) to pass that delta (multiplied by weights and the derivative of activation) to the previous layer. This process will go on until the input layer terminates it.
	It is done by parent to avoid code duplication"

	| actDer deltaSmall |
	
	actDer := activationFunction derivative: logit.
	
	"TODO: Find a better way to multiply two vectors elementwise"
	deltaSmall := ((1 to: size) collect: [ :i |
		(nextWeightedDeltaSmall at: i) * (actDer at: i) ]) asPMVector.
	
	"TODO: Find a better vay to multiply two vectors in a way that produces a matrix"
	deltas := deltas + (PMMatrix rows:
		((1 to: size) collect: [ :i |
			(1 to: (prevLayer size)) collect: [ :j |
				(deltaSmall at: i) * (input at: j) ] ])).
		
	biasDeltas := biasDeltas + deltaSmall.
	
	prevLayer backpropagate: ((weights transpose) * deltaSmall).