unsigned int
uint24: anInteger

	(anInteger between: 0 and: 16rFFFFFF) ifFalse: [ 
		self error: 'outOfRange'	 
	].

	writer
		put: (anInteger digitAt: 3); 
		put: (anInteger digitAt: 2);
		put: (anInteger digitAt: 1)
