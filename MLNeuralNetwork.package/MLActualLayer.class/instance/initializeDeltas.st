as yet unclassified
initializeDeltas
	"This method creates matrix of deltas of the same size as the weight matrix of this layer, and initializes it with all 0s"

	| rows cols |
	
	rows := size.
	cols := prevLayer size.	

	deltas := PMMatrix rows:
		((1 to: rows) collect: [ :i |
			(1 to: cols) collect: [ :j |
				0 ]]).
		
	biasDeltas := ((1 to: size) collect: [ :i |
		0 ]) asPMVector.