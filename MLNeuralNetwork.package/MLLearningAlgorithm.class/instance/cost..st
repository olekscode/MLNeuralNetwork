accessing
cost: dataset
	"Calculates the cost on the given dataset"	

	| sum m |
	
	m := dataset size.
	
	sum := ((1 to: m) collect: [ :i | 
		inputLayer value: (dataset input at: i).
		(outputLayer cost: (dataset output at: i)) sum ]) sum.

	^ sum / m.