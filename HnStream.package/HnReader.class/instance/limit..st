initialization
limit: aNumber

	| newEnd |
	
	newEnd := position + aNumber.
	newEnd > end ifTrue: [ self error ].
	
	end := newEnd 