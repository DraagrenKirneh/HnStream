accessing
at: aPosition ifAbsent: aBlock

	| ix |
	
	ix := aPosition - offset .
	
	^ (ix between: 1 and: buffer size)
			ifTrue: [ buffer at: ix ]
			ifFalse: [ aBlock value ]