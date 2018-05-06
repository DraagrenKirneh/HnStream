as yet unclassified
nextContinuation: aByte

	| next |
	
	next := stream next.
	
	^ (next bitAnd: 16rC0) = 16r80 
		ifTrue: [ (aByte bitShift: 6) + (next bitAnd: 16r3F) ]
		ifFalse: [ self errorIllegalContinuationByte ].