as yet unclassified
accuracy: input target: output
	"Tells how many percents of the given input/output pairs (examples) this neural network classifies correctly"

	| m correct prediction predictedClass actualClass |
	
	"Number of test examples"
	m := (input size).
		
	"Getting the number of correctly classified examples"
	correct := 0.
	
	(1 to: m) do: [ :i |
		prediction := self value: (input at: i).
		predictedClass := prediction indexOf: (prediction max).
		actualClass := (output at: i) indexOf: 1.
		
		(predictedClass = actualClass) ifTrue: [ 
			correct := correct + 1. ]
	] displayingProgress: [ :i |
		'Evaluating accuracy: ', (i / m * 100 asFloat round: 1) asString, '%'  ].
			
	^ (correct / m) asFloat.