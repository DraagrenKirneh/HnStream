private
ensureSize 
	"Grow the collection by doubling the size, but keeping the growth between 20 and 1000000.
	Then put <anObject> at the current write position."
	
	| newSize |
	
	position < end ifTrue: [ ^ self ].
	
	position >= limit ifTrue: [ HnWriteLimitReached signal ].
	
	newSize := (destination size min: 1000000 max: 20) min: limit.
	
	destination := destination grownBy: (destination size min: 1000000 max: 20).
	end := destination size.