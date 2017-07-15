as yet unclassified
lineplot: values
	"TODO: Replace it with a builder"
	
	| ds b lo hi prec roundedValues |
	
	"Determine the minimal precision at which lo differs from hi"
	lo := values min.
	hi := values max.
	prec := 0.
	
	((values collect: [ :v |
		(v - (values at: 1)) ** 2 ]) sum
	closeTo: 0)
		ifTrue: [ prec := 1 ]
		ifFalse: [ 
			[ lo asInteger = hi asInteger ] whileTrue: [ 
				prec := prec + 1.
				lo := lo * 10.
				hi := hi * 10. ] ].
	
	"Add 1, because if values range from 0.1 to 0.2, we want to see labels like [0.10 0.11 0.12 ... 0.20], not [0.1 0.1 0.1 ... 0.2] "
	prec := prec + 1.
	
	roundedValues := values collect:
		[ :v | v round: prec ].
	
	"Rounded lo and hi"
	lo := roundedValues min.
	hi := roundedValues max.

	ds := RTData new.
	ds noDot.
	ds points: roundedValues.
	ds y: [ :value | (value - lo) ].

	"ds dotShape ellipse 
   		color: (Color red alpha: 0.3)."
		
	ds connectColor: Color red.

	b := RTGrapher new.
	b add: ds. 

	"b axisX numberOfTicks: 0."
	b axisY numberOfTicks: 5.

	"We need to round again, because of the problem of float precision:
	0.183 + 0.1 = 0.28300000000000003"
	b axisY labelConversion: [ :v | (v + lo) round: prec ].
	^ b