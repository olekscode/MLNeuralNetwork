as yet unclassified
divideDeltasBy: batchSize
	"Divides the matrix of deltas of this layer (the sum of delta matrices over all training examples) by the size of batch. It is used for batch learning. 
	 Asks the parent to divide the matrix of deltas of this layer (the sum of delta matrices over all training examples) by the size of batch. Then passes this message to the next layer"

	super divideDeltasBy: batchSize.
	nextLayer divideDeltasBy: batchSize.