instance creation
ensureDistance: aNumber

	(position + aNumber between: start and: end) ifFalse: [ 
		HnReadPastEnd signal	
	].