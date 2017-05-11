as yet unclassified
divideDeltasBy: batchSize
	"Divides the matrix of deltas of this layer (the sum of delta matrices over all training examples) by the size of batch. It is used for batch learning. 
	MLHiddenLayer overrides this method. It calls the method of its parent (this one), and then passes the message to the next layer. MLOutputLayer doesn't have a next layer, so for it only this method will be executed.
	It is done by parent to avoid code duplication"

	"TODO: Implement the PMMatrix>>#/ aNumber method"
	| rows cols |
	rows := size.
	cols := prevLayer size.
	
	(1 to: rows) collect: [ :i |
		(1 to: cols) collect: [ :j |
			deltas at: i at: j put: ((deltas at: i at: j) / batchSize) ] ].
	
	(1 to: size) collect: [ :i |
		biasDeltas at: i put: ((biasDeltas at: i) / batchSize) ].