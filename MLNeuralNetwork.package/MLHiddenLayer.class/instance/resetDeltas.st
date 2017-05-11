as yet unclassified
resetDeltas
	"Asks the parent to set all deltas equal to 0. Then passes this message to the next layer"

	super resetDeltas.
	nextLayer resetDeltas.