unsigned int
uint32: anInteger

	(anInteger between: 0 and: 16rFFFFFFFF) ifFalse: [ 
		self error: 'outOfRange'	 
	].

	writer 
		put: (anInteger digitAt: 4);
		put: (anInteger digitAt: 3);
		put: (anInteger digitAt: 2);
		put: (anInteger digitAt: 1)
