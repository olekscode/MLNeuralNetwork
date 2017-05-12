I am a data reader for MNIST database for  handwritten digit recognition. I provide very simple interface for reading the data from the four IDX files named as on Yan LeCun's website and located in a given directory.

I use IdxReader to read the data from IDX files. IDX file format is a simple format for vectors and multidimensional matrices of various numerical types. 

Example usage:

dir := '/home/user/data/mnist/'. "path to your directory"
trainData := MLMnistReader readTrainFrom: dir.
testData := MLMnistReader readTestFrom: dir.