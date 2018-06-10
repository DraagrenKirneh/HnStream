reading
variableInteger
	
	| byte |
	
	byte := self next.
	
	^ (byte allMask: 128)
		ifTrue: [ (self variableInteger << 7) bitOr: (byte bitAnd: 127) ]
		ifFalse: [ byte bitAnd: 127 ]
		