private
writeBuffer

	self 
		primSetPosition: handle to: buffer offset;
		primWrite: handle from: buffer data startingAt: 1 count: buffer count.
		
	buffer rollover
	
	"fetchFrom: anIndex
	
	| array limit |
	
	limit := self size - anIndex.
	limit < 1 ifTrue: [ self error: 'Buffer out of reach' ].
	array := ByteArray new: (bufferSize min: limit).
	
	self 
		primSetPosition: handle to: anIndex - 1; 
		primRead: handle into: array startingAt: 1 count: array size.
		
	array ifNotNil: [ prevBuffer := buffer ].
	buffer := HnOffsetBuffer on: array startingAt: anIndex.
	
	^ array at: 1"	
