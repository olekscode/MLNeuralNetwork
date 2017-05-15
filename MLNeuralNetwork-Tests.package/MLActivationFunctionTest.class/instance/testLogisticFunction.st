tests
testLogisticFunction
	"tests if the logistic sigmoid activation function returns the expected values and derivatives given the logit"

	| activationFunction logits expectedActivity actualActivity expectedDerivative actualDerivative |
	
	activationFunction := MLLogisticFunction new.
	
	logits := #(-0.3 0.1 -0.5 0.8 -0.9 -0.1) asPMVector.
	
	expectedActivity := #(
		0.42555 0.52497 0.37754
		0.68997 0.28905 0.47502) asPMVector.
	expectedDerivative := #(
		0.24445 0.24937 0.23500
		0.21390 0.20550 0.24937) asPMVector.
	
	actualActivity := activationFunction evaluateAt: logits.
	actualDerivative := activationFunction derivative: logits.
	
	1 to: logits size do: [ :i | 
		self
			assert: (actualActivity at: i)
			closeTo: (expectedActivity at: i).
			
		self
			assert: (actualDerivative at: i)
			closeTo: (expectedDerivative at: i) ].