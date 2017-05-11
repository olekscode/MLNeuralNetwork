as yet unclassified
show: weightMatrix
	"Returns the RTView with a TRBitmapShape of the weight matrix. All numbers are converted to the range 0-255"
	
	| img rows cols f v c s |
	
	img := weightMatrix * 255.
	rows := weightMatrix rows size.
	cols := (weightMatrix rows at: 1) size.
	
	f := Form extent: cols@rows depth: 16.

	1 to: f width do: [ :i |
   		1 to: f height do: [ :j |
      		f colorAt: i @ j
            	put: (
               	Color gray: (img at: j at: i)) ] ].

	v := RTView new.
	c := v canvas.
	s := TRBitmapShape new.
	s form: f.
	c addShape: s.
	^ v