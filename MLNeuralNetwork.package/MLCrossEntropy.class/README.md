The cross-entropy cost function.
Note: it can only be used with the logistic sigmoid activation function.

Example usage:
-=-=-=-=-=-=-=-=-=-=-=-=
cost := MLCrossEntropy new.
cost value: #(0.2 0.5 0.3) target: #(0 1 0) .
cost derivative: #(0.2 0.5 0.3) target: #(0 1 0) .
-=-=-=-=-=-=-=-=-=-=-=-=