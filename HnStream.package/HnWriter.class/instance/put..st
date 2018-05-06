instance creation
put: anObject

	self ensureSize.
	
	position := position + 1.
	
	^ destination at: position put: anObject 