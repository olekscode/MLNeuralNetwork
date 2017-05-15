accessing
evaluateAt: logits
	
	| exponents sum |
	
	exponents := logits exp.
	sum := exponents sum.
	
	^ exponents collect: [ :e |
		e / sum ].