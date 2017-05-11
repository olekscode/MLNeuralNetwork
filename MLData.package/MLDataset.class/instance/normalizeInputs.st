as yet unclassified
normalizeInputs
	"Normalizes the input values to the range [0,1]"

	| min max |
	
	min := (input collect: [ :inputVector |
		inputVector min ]) min.
	
	max := (input collect: [ :inputVector |
		inputVector max ]) max.
	
	input := input collect: [ :inputVector |
		inputVector collect: [ :v |
			(v - min) / (max - min) ]].
	^ self