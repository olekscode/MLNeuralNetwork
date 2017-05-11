as yet unclassified
learn: input target: output
	"Performs one iteration (epoch) of backpropagation learning.
	Before updating its weights the network looks at all training examples"
	
	| m |
	
	"Batch size. Number of training examples"
	m := input size.
	
	1 to: m do: [ :i |
		self propagate: (input at: i) target: (output at: i) ].
	
	inputLayer divideDeltasBy: m.
	self update.