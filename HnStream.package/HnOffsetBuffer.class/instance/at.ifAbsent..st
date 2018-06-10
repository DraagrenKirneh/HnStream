accessing
at: aPosition ifAbsent: aBlock

	| index |
	
	index := aPosition - offset.
	
	^ (index between: 1 and: buffer size)
			ifTrue: [ buffer at: index ]
			ifFalse: [ aBlock value ]