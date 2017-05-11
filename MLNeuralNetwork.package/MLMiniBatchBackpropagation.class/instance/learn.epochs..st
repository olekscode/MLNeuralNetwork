as yet unclassified
learn: dataset epochs: epochs
	"comment stating purpose of message"

	| subset costSubset |
	
	"TODO: Make it an instance variable"
	costSubset := dataset randomSubset: 100.
	
	(1 to: epochs) do: [ :i |
		subset := dataset randomSubset: batchSize.
		
		"One epoch of learning"
		self learn: (subset input) target: (subset output).
		costHistory add: (self cost: costSubset).
	] displayingProgress: [ :i |
		'Training a neural network. Epochs: ', i asString ].