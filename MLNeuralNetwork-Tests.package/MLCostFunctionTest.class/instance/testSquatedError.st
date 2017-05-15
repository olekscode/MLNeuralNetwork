tests
testSquatedError
	"The squared error cost function should take the actual output and the targeted output as parameters, find their difference (error) and return its square divided by 2. The result should be a vector (cost of each output neuron). Division by 2 simplifies the derivative, which is more important because it affects the speed of training. In the following equations t is the target output, y is the actual output and J is the value of a cost function:
	J = 1/2 * ((t - y) ** 2)
	dJ/dy = y - t" 

	| costFunc actualOutput targetOutput actualCost expectedCost actualDerivative expectedDerivative |
	
	costFunc := MLSquaredError new.
	
	actualOutput := #(1 2 3 4) asPMVector.
	targetOutput := #(4 3 2 1) asPMVector.
	
	expectedCost := #(4.5 0.5 0.5 4.5).
	expectedDerivative := #(-3 -1 1 3) asPMVector.
	
	actualCost := costFunc
		evaluateAt: actualOutput
		target: targetOutput.
	
	actualDerivative := costFunc
		derivative: actualOutput
		target: targetOutput.
	
	self assert: actualCost equals: expectedCost.
	self assert: actualDerivative equals: expectedDerivative.