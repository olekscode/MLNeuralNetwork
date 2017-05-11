as yet unclassified
initializeWeights
	"This method creates a weight matrix of size (rows, cols), where rows is the number of neurons in this layer, and cols is the number of neurons in the previous one.
	The weight matrix is then initialized with random numbers in range [-1/(2*k), 1/(2*k)] where k is the size of this layer (number of neurons)"

	| random rows cols frac |
	
	rows := size.
	cols := prevLayer size.	
	random := Random new.
	
	"This will give us the random float number in range [min, max]:
	(rand next) * (max - min) + min
	We optimize it a bit for our particular case"
	frac := (1 / (2 * size)) asFloat.
	
	weights := PMMatrix rows:
		((1 to: rows) collect: [ :i | 
  	 		(1 to: cols) collect: [ :j |
      			((random next) * 2 * frac - frac) ]]).