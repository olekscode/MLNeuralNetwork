accessing
evaluateAt: output target: target
	"comment stating purpose of message"

	^ (1/2) * ((1 to: (output size)) collect: [ :i |
		((target at: i) - (output at: i)) ** 2 ]).