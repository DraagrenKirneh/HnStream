streaming
peekFor: anObject 

	(self atEnd or: [ (source at: position + 1) ~= anObject ]) 
		ifTrue: [ ^ false ].
		
	position := position + 1.
		
	^ true 