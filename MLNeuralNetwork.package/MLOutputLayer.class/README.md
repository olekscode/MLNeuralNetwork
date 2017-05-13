I am an output layer. I am connected to some previous layer, but I don't have any layers after me. My output is the output of the neural network. I am an actual layer (MLActualLayer). It means that I store my weights and deltas (weight gradients) and update them during learning. Most logic is implemented in my parent - MLActualLayer. I just call the methods of superclass and pass the corresponding message to the previous layer (if this is  the backpropagated message) or terminate the chain of execution (in case of forward propagated messages).

I have a cost function that evaluates how close is my output to the expected target.

Example usage:

"Create an output layer with 10 neurons"
layer := MLOutputLayer new initialize: 10.

"Connect it to some other layer. Normally, this should be done in a constructor of MLNeuralNetwork"
layer prevLayer: someOtherLayer.
someOtherLayer nextLayer: layer.

layer size. "10"

layer prevLayer size. "the size of someOtherLayer"

"These methods are called by MLLearningAlgorithm"
layer forwardPropagate: input.
layer backpropagate: delta.
layer update.
layer resetDeltas.

"Initialize with a cost function"
layer costFunction: (MLCrossEntropy new).

"Get the cost of a current output if target is the expected output"
layer cost: target.