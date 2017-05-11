private
decToBin: number
	"comment stating purpose of message"

	| binVector index |
	binVector := PMVector new: 10.
	
	1 to: 10 do: [ :i |
		binVector at: i put: 0 ].
	
	( number = 0 ) 
		ifTrue: [ index := 10 ]
		ifFalse: [ index := number ].

	binVector at: index put: 1.
	
	^ binVector