accessing
layerAt: k
	"Hides the implementation of layers as a linked list"
	
	"TODO: Do something if k is greater than the number of layers"
	
	| layer |
	layer := inputLayer.
	
	(k - 1) timesRepeat: [ 
		layer := layer nextLayer ].
	
	^ layer