writing
variableInteger: anInteger

	| int byte |
	
	int := anInteger.
	
	[ 
		byte := int bitAnd: 127. "lowest 7 bits"
		int := int >> 7.
		
	int > 0 ] whileTrue: [
		self put: (byte bitOr: 128) 
	].
		
	self put: byte