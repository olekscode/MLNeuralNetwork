as yet unclassified
resetDeltas
	"Sets all deltas equal to 0. It is used for batch learning.
	MLHiddenLayer overrides this method. It calls the method of its parent (this one), and then passes the message to the next layer. MLOutputLayer doesn't have a next layer, so for it only this method will be executed.
	It is done by parent to avoid code duplication"

	1 to: size do: [ :i |
		1 to: (prevLayer size) do: [ :j |
			deltas at: i at: j put: 0 ]].