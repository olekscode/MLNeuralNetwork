as yet unclassified
randomSubset: subsetSize
	"Returns a random subset of a specified size.
	Note: elements of this dataset can be included in subset more than once. It shouldn't cause a problem during the mini-batch learning because usually we run through the whole dataset more than once"
	
	| k x y |
	x := Array new: subsetSize.
	y := Array new: subsetSize.
	
	1 to: subsetSize do: [ :i |
		k := size atRandom.
		x at: i put: (input at: k).
		y at: i put: (output at: k) ].
	
	^ self class new input: x output: y.