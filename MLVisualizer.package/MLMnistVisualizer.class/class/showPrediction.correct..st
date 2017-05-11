as yet unclassified
showPrediction: points correct: actualDigit
	
	| b ds prediction |
	
	"Finding the max value
	points is the array of arrays, so (points max) won't work"
	prediction := 0.
	points do: [ :p |
		((p at: 2) > prediction )
			ifTrue: [ prediction := (p at: 2) ] ].

	b := RTGrapher new.
	ds := RTData new.
	
	ds barShape
		width: 30;
		"The correct (expected) value should be green"
		if: [ :v | (v at: 1) = actualDigit ] color: (Color green alpha: 0.3);
		
		"If the predicted value is different from the correct one, it should be red"
		if: [ :v |
			((v at: 2) = prediction) and:
			((v at: 1) = actualDigit) not]
				color: (Color red alpha: 0.3).
	
	ds points: points.
	ds y: #second.
		
	ds barChartWithBarTitle: #first rotation: 0.
	b add: ds.
	b axisX noLabel; noTick.
	b build.
	^ b