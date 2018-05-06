accessing
at: anIndex

	^ buffer at: anIndex ifAbsent: [ 
		prevBuffer at: anIndex ifAbsent: [ 
			self fetchFrom: anIndex	 
		]
	]