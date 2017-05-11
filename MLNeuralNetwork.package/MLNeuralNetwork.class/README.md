The main class of this package. It represents the neural network as the linked list of layers and provides the interface for interaction with all other parts.

Example usage:
-=-=-=-=-=-=-=-=-=-=-=-=
"Create a neural network with 784 input units (input layer), one hidden layer with 800 neurons, and an output layer with 10 neurons (10 classes of classification)"
net := MLNeuralNetwork new initialize: #(784 800 10).

"Choosing the cost function for this network (for the output layer). It is MLSquaredError by default"
net costFunction: (MLCrossEntropy  new).

"Choosing the activation function for the output layer. MLLogisticFunction by default"
net outputLayer activationFunction: (MLSoftmax new).

"And the activation function for the hidden layer.
TODO: Create a better interface"
net inputLayer nextLayer activationFunction: (MLTanhFunction new).

"Choosing the learning rate for the whole network. It is 0.1 by default"
net learningRate: 0.5.

epochs timesRepeat: [ 
	"The dataset should be aquired prior to learning. Neural network accepts any array of PMVectors as its input, but in this example I store the dataset in an object of MLDataset class."
	subset := dataset randomSubset: 100.
	input := subset input. "an array of 100 PMVectors of size 784"
	output := subset output. "an array of 100 PMVectors of size 10"
	
	"Batch (actually mini-batch) learning from 100 input/output examples"
	net learn: input target: output. ].

"Random input/output pair from dataset (see MLDataset)"
example := dataset randomPair.

"Predicting the output"
prediction := net value: (example input).
-=-=-=-=-=-=-=-=-=-=-=-=