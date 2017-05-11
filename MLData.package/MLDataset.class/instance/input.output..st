as yet unclassified
input: x output: y
	"This method works as a constructor and allows to initialize the dataset with input and output. Note that they can only be assigned together"

	input := x.
	output := y.
	
	size := input size.
	"TODO: throw some exception if sizes of input and output don't match"
	
	^ self