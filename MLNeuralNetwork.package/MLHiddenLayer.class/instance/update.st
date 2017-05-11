as yet unclassified
update
	"Asks the parent to update the weights using the deltas calculated during backpropagation. Then passes this message to the next layer"

	super update.
	nextLayer update.