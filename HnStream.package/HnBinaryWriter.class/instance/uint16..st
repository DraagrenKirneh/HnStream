unsigned int
uint16: anInteger

	(anInteger between: 0 and: 16rFFFF) ifFalse: [ 
		self error: 'outOfRange'	 
	].

	writer 
		put: (anInteger digitAt: 2);
		put: (anInteger digitAt: 1)
