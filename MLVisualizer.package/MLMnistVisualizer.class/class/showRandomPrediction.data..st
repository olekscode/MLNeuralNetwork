as yet unclassified
showRandomPrediction: model data: dataset
	
	| example points prediction composer b1 b2 |
	
	example := dataset randomPair.
	prediction := model value: (example input).
	
	points := prediction collectWithIndex: [ :v :i |
		{ i % 10 . v } ].
	
	composer := RTComposer new.
	
	b1 := MLMnistImage new initialize: example input.
	b1 view: composer view.
	b1 build.
	composer group: #img.
	
	b2 := self
		showPrediction: points
		correct: (example output indexOf: 1) % 10.
		
	b2 view: composer view.
	b2 build.
	composer group: #dist.
	
	"composer move: #img onTheLeftOf: #dist."
	composer move: #img above: #dist.
	composer setGeneralTitle: 'Recognition of a random MNIST image'.
	
	^ composer view