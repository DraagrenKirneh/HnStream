streaming
peek

	| value |
	
	value := self next.
	position := position - 1.
	
	^ value 	