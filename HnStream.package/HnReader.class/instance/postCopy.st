copying
postCopy

	source isCollection ifFalse: [ 
		source := source copy
	]