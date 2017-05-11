accessing
value: logits

	^ logits collect: [ :z |
		1 / (1 + (-1 * z) exp)].