accessing
derivative: logits

	^ logits collect: [ :each |
		each > 0
			ifTrue: [ 1 ]
			ifFalse: [ 0 ] ].