accessing
evaluateAt: logits

	^ logits collect: [ :z |
		1 / (1 + (-1 * z) exp)].