signed int
int16: anInteger
	
	| uint |
	
	(anInteger between: -16r8000 and: 16r7FFF) ifFalse: [ 
		self error	 
	].

	uint := anInteger < 0 
		ifTrue: [ 16r10000 + anInteger  ]
		ifFalse: [ anInteger ].
		
	self uint16: uint	
