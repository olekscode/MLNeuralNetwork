as yet unclassified
randomPair
	"Returns the randomly selected input/output pair"

	| k |
	k := size atRandom.
	^ MLDataPair new input: (input at: k) output: (output at: k).