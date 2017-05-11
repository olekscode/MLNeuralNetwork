as yet unclassified
initializeBiases
	"This method creates a vector of biases of size equal to the number of neurons in this layer.
	It is initialized with random numbers in range [-1/(2*k), 1/(2*k)] where k is the size of this layer (number of neurons)"

	| random frac |	
	random := Random new.
	
	"This will give us the random float number in range [min, max]:
	(rand next) * (max - min) + min
	We optimize it a bit for our particular case"
	frac := (1 / (2 * size)) asFloat.
	
	biases := ((1 to: size)
		collect: [ :i | 
      		((random next) * 2 * frac - frac) ]) asPMVector.