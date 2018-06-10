signed int
int8: anInteger

	| uint |
	
	(anInteger between: -16r80 and: 16r7F) ifFalse: [ 
		self error	 
	].

	uint := anInteger < 0 
		ifTrue: [ 16r100 + anInteger  ]
		ifFalse: [ anInteger ].
		
	self uint8: uint	
