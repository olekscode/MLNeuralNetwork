This is the actual layer. It stores the weights and deltas (weight gradients) matrices. It has an activation function, which is applied to the logit (weighted sum of input) at each step of learning, and a learning rate (a step size) which defines how much the weights are updated and how fast does this layer learn.
This is an abstract superclass for MLHiddenLayer and MLOutputLayer. These types of layers are connected to previous layers and therefore have weights (from previous layer to this one). MLInputLayer is a pseudo-layer, which doesn't have weights, doesn't perform any computations, and doesn't learn, but works as a dummy layer with standard MLLayer interface (using dummy nodes is a common practice for linked lists).
Every neural network should have one dummy MLInputLayer and one or more MLActualLayers (the last one must be MLOutputLayer, and the ones in between are MLHiddenLayer -s).

Example usage:
-=-=-=-=-=-=-=-=-=-=-=-=
"Create a layer (output layer in this case) with 10 neurons"
layer := MLOutputLayer new initialize: 10.

"Connect it to some other layer. Normally, this should be done in a constructor of MLNeuralNetwork"
layer prevLayer: someOtherLayer.
someOtherLayer nextLayer: layer.

layer size. "10"

layer prevLayer size. "the size of someOtherLayer"

"These methods are called by the MLNeuralNetwork or MLLearningAlgorithm. Their implementation depends on a specific subclass"
layer forwardPropagate: input.
layer backpropagate: delta.
layer update.

"Sets deltas (weight gradients) to zeros at each iteration"
layer resetDeltas.
-=-=-=-=-=-=-=-=-=-=-=-=