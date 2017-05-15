I am a logistic sigmoid activation function. I take a vector of  logits (weighted sum of inputs) of each neuron in a layer and return the vector of sigmoid values of these logits.

I know my value and derivative.

Example usage:
-=-=-=-=-=-=-=-=-=-=-=-=
g := MLLogisticFunction new.
g evaluateAt: #(2 3 1 4). 
g derivative: #(2 3 1 4).
-=-=-=-=-=-=-=-=-=-=-=-=