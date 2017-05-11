The abstract class that creates a layer, connects it to other layers, and provides the interface for intercting with it.

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