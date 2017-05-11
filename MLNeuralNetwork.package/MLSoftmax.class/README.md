I am a softmax activation function. I take a vector as an input and return the vector of probabilities that sum up to 1.s

I know my value and derivative.

Example usage:
-=-=-=-=-=-=-=-=-=-=-=-=
g := MLSoftmax new.
g value: #(2 3 1 4). 
g derivative: #(2 3 1 4).
-=-=-=-=-=-=-=-=-=-=-=-=