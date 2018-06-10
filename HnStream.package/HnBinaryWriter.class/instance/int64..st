signed int
int64: anInteger
	
	| uint |
	
	"128 << 56"
	(anInteger between: -16r8000000000000000 and: 16r7FFFFFFFFFFFFFFF) ifFalse: [ 
		self error	 
	].

	uint := anInteger < 0 
		ifTrue: [ 16r10000000000000000 + anInteger  ]
		ifFalse: [ anInteger ].
		
	self uint64: uint	
