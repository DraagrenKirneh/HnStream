accessing
at: anIndex put: aValue ifFailed: aBlock

	((anIndex ~= (offset + count + 1)) or: [ count < buffer size ])
		ifFalse: [ aBlock value. ^ self ].
		
	count := count + 1.
	buffer at: count put: aValue  
	
	
	