as yet unclassified
readCString: count
	
	| col |
	
	col := (self next: count) copyUpTo: 0.
	
	^ col asString

	