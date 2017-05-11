MLHiddenLayer is an actual layer (MLActualLayer) that stores its weights and deltas (weight gradients) and updates them during learning. Most logic is implemented in MLActualLayer. This layer just calls the methods of superclass and passes the corresponding message to the next (or previous) layer.
Every neural network should have one dummy MLInputLayer and one or more MLActualLayers (the last one must be MLOutputLayer, and the ones in between are MLHiddenLayer -s).

Example usage:
-=-=-=-=-=-=-=-=-=-=-=-=
"Create an input layer with 784 neurons"
layer := MLInputLayer new initialize: 784.

"Connect it to some other layer. Normally, this should be done in a constructor of MLNeuralNetwork"
layer nextLayer: someOtherLayer.
someOtherLayer prevLayer: layer.

layer size. "784"

layer nextLayer size. "the size of someOtherLayer"

"These methods are called by the MLNeuralNetwork or MLLearningAlgorithm. MLInputLayer just passes them to the next layer without doing anything"
layer forwardPropagate: input.
layer update.
layer resetDeltas.

"MLInputLayer receives this message from the next layer and terminates the process of backpropagation"
layer backpropagate: delta.
-=-=-=-=-=-=-=-=-=-=-=-=