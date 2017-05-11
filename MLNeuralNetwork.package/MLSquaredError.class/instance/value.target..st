as yet unclassified
value: output target: target
	"comment stating purpose of message"

	"^ (target - output) ** 2."
	
	"We have to assume that logit will always be a vector"
	^ (1/2) * ((1 to: (output size)) collect: [ :i |
		((target at: i) - (output at: i)) ** 2 ]).