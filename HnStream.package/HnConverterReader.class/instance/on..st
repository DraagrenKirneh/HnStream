accessing
on: aCollection

	super on: aCollection.
	
	converter ifNotNil: [ 
		self converter: converter class	
	].