as yet unclassified
learn: input target: output epochs: epochs
	"comment stating purpose of message"

	(1 to: epochs) do: [ :i |
		 self learn: input target: output.
	] displayingProgress: [ :i |
		'Training a neural network. Epochs: ', i asString ].