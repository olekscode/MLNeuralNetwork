tests
testTanh
	"tests if the tanh activation function returns the expected values and derivatives given the logit"

	| activationFunction logits expectedActivity actualActivity expectedDerivative actualDerivative |
	
	activationFunction := MLTanh new.
	
	logits := #(-0.3 0.1 -0.5 0.8 -0.9 -0.1) asPMVector.
	
	expectedActivity := #(
		-0.29131 0.09966 -0.46211
		0.66403 -0.71629 -0.09966) asPMVector.
	expectedDerivative := #(
		0.91513 0.99006 0.78644
		0.55905 0.48691 0.99006) asPMVector.
	
	actualActivity := activationFunction evaluateAt: logits.
	actualDerivative := activationFunction derivative: logits.
	
	1 to: logits size do: [ :i | 
		self
			assert: (actualActivity at: i)
			closeTo: (expectedActivity at: i).
			
		self
			assert: (actualDerivative at: i)
			closeTo: (expectedDerivative at: i) ].