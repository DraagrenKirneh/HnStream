signed int
int32: anInteger
	
	| uint |
	
	(anInteger between: -16r80000000 and: 16r7FFFFFFF) ifFalse: [ 
		self error	 
	].

	uint := anInteger < 0 
		ifTrue: [ 16r100000000 + anInteger  ]
		ifFalse: [ anInteger ].
		
	self uint32: uint	
