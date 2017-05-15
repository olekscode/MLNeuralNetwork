hooks
renderIn: aView	
	| f s scale color |
	scale := 10.
	f := Form extent: (28 * scale)@(28 * scale) depth: 16.

	1 to: 28 do: [ :i |
   		1 to: 28 do: [ :j |
			color := Color gray: (image at: ((i - 1) * 28 + j)).
			
			1 to: scale do: [ :scale_i |
				1 to: scale do: [ :scale_j |
					f colorAt:
						((j - 1) * scale + scale_j) @
						((i - 1) * scale + scale_i) put: color. ] ].
      		] ].

	s := RTBitmap new.
	s form: f.
	aView add: s element.