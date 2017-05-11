The cross-entropy cost function for softmax activation.
Note: it can only be used with softmax activation function on the output layer

Example usage:
-=-=-=-=-=-=-=-=-=-=-=-=
cost := MLSoftmaxCrossEntropy new.
cost value: #(0.2 0.5 0.3) target: #(0 1 0) .
cost derivative: #(0.2 0.5 0.3) target: #(0 1 0) .
-=-=-=-=-=-=-=-=-=-=-=-=