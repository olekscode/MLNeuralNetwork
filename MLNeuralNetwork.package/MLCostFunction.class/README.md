I am an abstract cost function. I don't implement anything but provide a public interface for all the cost functions. You can define your own cost function as my subclass  and tell the  neural network to use it (see examples below).

To do that you need to provide implementations for the following messages:
1. evaluateAt: target: (vector, vector -> vector)
2. derivative: target: (vector, vector -> vector)

Cost functions accept two vectors: the actual output and the ecpected output of the network and return the vector of cost values (one value per output neuron)

Example usage of subclasses:

cost := ConcreteCost new.

"The output layer will ask your function for its value and derivative using the interface defined by this class"
cost evaluateAt: #(1 2 3 4) target: #(4 3 2 1).
cost derivative: #(1 2 3 4) target: #(4 3 2 1).

"Tell the neural network to use g as its activation function"
neuralNet costFunction: cost.