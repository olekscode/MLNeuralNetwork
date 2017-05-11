as yet unclassified
value: output target: target
	"comment stating purpose of message"

	"^ -1 * target * (output log) - (1 - target) * ((1 - output) log)."
	
	| t y |
	
	"We have to assume that logit will always be a vector"
	^ (1 to: (output size)) collect: [ :i |
		t := target at: i.
		y := output at: i.
		
		-1 * t * (y ln) - ((1 - t) * ((1 - y) ln)) ].