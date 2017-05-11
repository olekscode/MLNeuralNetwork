The part of cost function used for batch or online learning.

Example usage: 
-=-=-=-=-=-=-=-=-=-=-=-=
cost := MLSoftmaxCrossEntropy new. "Specific subclass"
cost value: #(0.2 0.5 0.3) target: #(0 1 0) .
cost derivative: #(0.2 0.5 0.3) target: #(0 1 0) .
-=-=-=-=-=-=-=-=-=-=-=-=