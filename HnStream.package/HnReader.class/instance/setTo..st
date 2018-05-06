initialization
setTo: aPosition

	(aPosition between: start and: end) ifFalse: [ 
		self error: 'Position out of bounds'
	].

	position := aPosition
	
	