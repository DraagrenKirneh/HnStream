accessing
at: anIndex put: aValue 
	
	buffer at: anIndex put: aValue ifFailed: [ 
		self writeBuffer.
		buffer at: anIndex put: aValue ifFailed: [ 
			self error	
		]
	].	