enumeration
peekDo: aBlock

	[ self atEnd ] whileFalse: [ 
		aBlock value: self peek.
		self skip
	]