tests
testLayerAccess
	"Tests if MLNeuralNetwork provides the interface for accessing its layers"
	
	| neurons net | 
	
	neurons := #(10 20 30 40).
	net := MLNeuralNetwork new: neurons.
	
	self assert: (net layerAt: 1) equals: (net inputLayer).
	self assert: (net layerAt: net size) equals: (net outputLayer).
	
	1 to: (net size) do: [ :i |
		self assert: (net layerAt: i) size equals: (neurons at: i) ].