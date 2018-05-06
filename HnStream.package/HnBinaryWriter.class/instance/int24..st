signed int
int24: anInteger
	
	| uint |
	
	(anInteger between: -16r800000 and: 16r7FFFFF) ifFalse: [ 
		self error	 
	].

	uint := anInteger < 0 
		ifTrue: [ 16r1000000 + anInteger  ]
		ifFalse: [ anInteger ].
		
	self uint24: uint	
