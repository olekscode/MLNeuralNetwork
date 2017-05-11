accessing
derivative: logits
	
	^ logits collect: [ :z |
			1 - ((z tanh) ** 2) ].