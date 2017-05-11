as yet unclassified
prevLayer: layer
	"Every time the we change the connection to the previous layer, the weight matrix must be rephaped and reinitialized"

	super prevLayer: layer.
	self initializeWeights.
	self initializeDeltas.