I am an abstract activation function. I don't implement anything but provide a common interface for all the activation functions. You can define your own activation functions as my subclasses  and tell the layer to use them (see examples below).

To do that you need to provide implementations for the following messages:
1. evaluateAt: (vector -> vector)
2. derivative: (vector -> vector)

The activation functions accept the vector of logits (weighted sum of inputs) of each neuron in the layer and return the vector of activities of these neurons (activity is the value of an activation function over the logit).

Example usage of subclasses:

g := ConcreteActivation new.

"The layer will ask your function for its value and derivative using the interface defined by this class"
g evaluateAt: #(1 2 3 4).
g derivative: #(1 2 3 4).

"Tell the layer to use g as its activation function"
layer activationFunction: g.