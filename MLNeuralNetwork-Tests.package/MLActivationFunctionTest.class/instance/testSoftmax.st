tests
testSoftmax
	"tests if the softmax activation function returns the expected values and derivatives given the logit"

	| activationFunction logits expectedActivity actualActivity expectedDerivative actualDerivative |
	
	activationFunction := MLSoftmax new.
	
	logits := #(-0.3 0.1 -0.5 0.8 -0.9 -0.1) asPMVector.
	
	#(0.12368 0.18451 0.10126 0.37157 0.06788 0.15107).
	expectedActivity := #(
		0.12368 0.18451 0.10126
		0.37157 0.06788 0.15107) asPMVector.
	expectedDerivative := #(1 1 1 1 1 1) asPMVector.
	
	actualActivity := activationFunction evaluateAt: logits.
	actualDerivative := activationFunction derivative: logits.
	
	1 to: logits size do: [ :i | 
		self
			assert: (actualActivity at: i)
			closeTo: (expectedActivity at: i).
			
		self
			assert: (actualDerivative at: i)
			closeTo: (expectedDerivative at: i) ].
		
	self assert: actualActivity sum closeTo: 1.