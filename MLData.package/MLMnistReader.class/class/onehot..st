private
onehot: digit
	"Turns a digit (0-9) into a one-hot vector. A PMVector with 10 numbers, all of which are 0, except for the one that represents the given digit. Because indexing in Smalltalk starts from 1, the index of 1 will be determined by adding 1 to the value of digit"

	| onehot |
	onehot := PMVector new: 10.
	
	1 to: 10 do: [ :i |
		onehot at: i put: 0 ].

	onehot at: (digit + 1) put: 1.
	
	^ onehot 