as yet unclassified
value: output target: target
	"comment stating purpose of message"
	
	| t y |
	
	"We have to assume that logit will always be a vector"
	^ (1 to: (output size)) collect: [ :i |
		t := target at: i.
		y := output at: i.
		
		-1 * t * (y ln) ].