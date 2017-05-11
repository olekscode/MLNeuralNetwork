accessing
value: logits
	
	^ logits collect: [ :v |
		(v > 0) ifTrue: 1 ifFalse: 0 ].