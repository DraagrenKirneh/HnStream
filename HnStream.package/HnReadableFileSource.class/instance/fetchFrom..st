private
fetchFrom: anIndex
	
	| array limit |
	
	limit := self size - anIndex + 1.
	limit < 1 ifTrue: [ self error: 'Buffer out of reach' ].

	array := ByteArray new: (bufferSize min: limit).

	self 
		primSetPosition: handle to: anIndex - 1; 
		primRead: handle into: array startingAt: 1 count: array size.
		
	array ifNotNil: [ prevBuffer := buffer ].
	buffer := HnOffsetBuffer on: array startingAt: anIndex - 1.
	
	^ array at: 1