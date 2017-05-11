accessing
derivative: logits

	| exponent |
	
	^ logits collect: [ :z |
		exponent := (-1 * z) exp.
		exponent / ((1 + exponent) ** 2) ].