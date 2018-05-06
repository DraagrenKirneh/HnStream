accessing
startingAt: aPosition between: aStartIndex and: anEndIndex explore: aBlock

	| exploingSource exploreStream |

	aStartIndex < start ifTrue: [ self error ].
	anEndIndex > anEndIndex ifTrue: [ self error ].
	
	(aPosition between: aStartIndex and: anEndIndex)
		ifFalse: [ self error ].

	exploingSource := source isCollection ifTrue: [ source ] ifFalse: [ source copy ].
		
	exploreStream := self class basicNew on: exploingSource 
		from: aStartIndex to: anEndIndex at: aPosition.
	
	^ aBlock value: exploreStream 