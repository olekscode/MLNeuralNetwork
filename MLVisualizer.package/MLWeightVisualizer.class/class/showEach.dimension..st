as yet unclassified
showEach: weightMatrix dimension: dim
	"Returns the RTView with a TRBitmapShape of the weight matrix. All numbers are converted to the range 0-255"
	
	| img k f v c s |
	
	k := (weightMatrix dimension x) atRandom.
	
	img := DhbMatrix rows:
		((1 to: (dim x)) collect: [ :i |
			(1 to: (dim y)) collect: [ :j |
				(weightMatrix at: k at: ((i - 1) * (dim y) + j)) * 255 ] ]).
	
	f := Form extent: dim depth: 16.

	1 to: f width do: [ :i |
   		1 to: f height do: [ :j |
      		f colorAt: i @ j
            	put: (
               	Color gray: (img at: i at: j)) ] ].

	v := RTView new.
	c := v canvas.
	s := TRBitmapShape new.
	s form: f.
	c addShape: s.
	^ v