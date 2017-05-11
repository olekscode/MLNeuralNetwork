as yet unclassified
cost: input target: target
	"Calculates the cost on the given dataset"	

	| sum m |
	
	m := input size.
	
	sum := ((1 to: m) collect: [ :i | 
		inputLayer value: (input at: i).
		(outputLayer cost: (target at: i)) sum ]) sum.

	^ sum / m.