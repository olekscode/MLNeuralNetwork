private
unrol: arrayOfArrays
	"comment stating purpose of message"

	| rows cols vector |
	rows := arrayOfArrays size.
	cols := (arrayOfArrays at: 1) size.
	
	vector := PMVector new: (rows * cols).
	
	1 to: rows do: [ :i |
		1 to: cols do: [ :j |
			vector at: ((i - 1) * cols + j)
				put: ((arrayOfArrays at: i) at: j) ]].
		
	^ vector
	