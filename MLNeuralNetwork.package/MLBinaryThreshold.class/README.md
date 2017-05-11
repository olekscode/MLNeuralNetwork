I am a binary threshold activation function. I take a vector of logits (weighted sum of inputs) of each neuron in the layer and return the vector of values, calculated by the following rule: 1 if logit exceeds the threshold and 0 otherwise.

I know my value and derivative.

Example usage:
-=-=-=-=-=-=-=-=-=-=-=-=
g := MLBinaryThreshold new.
g value: #(2 3 1 4). 
g derivative: #(2 3 1 4).
-=-=-=-=-=-=-=-=-=-=-=-=