I am a logistic cross-entropy cost function. I accept two vectors: the actual output and the ecpected output of the network and return the vector of cost values (one value per output neuron).
I can only be used with the logistic sigmoid activation function.

I know my value and derivative.

Example usage:

cost := MLCrossEntropy new.
cost evaluateAt: #(2 3 1 4) target: #(4 3 2 1). 
cost derivative: #(2 3 1 4) target: #(4 3 2 1).