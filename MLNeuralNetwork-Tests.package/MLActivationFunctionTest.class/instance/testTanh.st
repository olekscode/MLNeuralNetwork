tests
testTanh
	"tests if the tanh activation function returns the expected values and derivatives given the logit"

	| activationFunction logits expectedActivity actualActivity expectedDerivative actualDerivative |
	
	activationFunction := MLTanh new.
	
	logits := #(-0.3 0.1 -0.5 0.8 -0.9 -0.1) asPMVector.
	expectedActivity := #(0 1 0 1 0 0) asPMVector.
	expectedDerivative := #(1 1 1 1 1 1) asPMVector.
	
	actualActivity := activationFunction value: logits.
	actualDerivative := activationFunction derivative: logits.
	
	self assert: actualActivity equals: expectedActivity.
	self assert: actualDerivative equals: expectedDerivative.