accessing
evaluateAt: logits

	^ logits collect: [ :each |
		each > 0
			ifTrue: [ each ]
			ifFalse: [ 0 ] ].