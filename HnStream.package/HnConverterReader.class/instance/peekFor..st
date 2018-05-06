peeking
peekFor: anObject 

	self atEnd ifTrue: [ ^ false ].
	self peek = anObject ifFalse: [ 
		^ false	 
	].
	self skip.
	
	^ true