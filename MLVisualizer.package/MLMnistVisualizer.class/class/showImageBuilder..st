as yet unclassified
showImageBuilder: img
	"Returns the RTView with a TRBitmapShape of an image, represented by a vector of 784 numbers in range 0-255 (unroled 28x28 8-bit image)"
	
	| f s |
	f := Form extent: 28@28 depth: 16.

	1 to: f width do: [ :i |
   		1 to: f height do: [ :j |
      		f colorAt: j @ i
            	put: (
               	Color gray: (img at: ((i - 1) * 28 + j))) ] ].

	s := TRBitmapShape new.
	s form: f.
	s addObject: RTBuilder.
	^ s