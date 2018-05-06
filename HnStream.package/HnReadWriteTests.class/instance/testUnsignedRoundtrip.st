tests
testUnsignedRoundtrip

	writer := HnWriter forBinary.
	
	writer 
		uint8: 24;
		uint16: 1234;
		uint24: 7899;
		uint32: 123124.
		"int64: 256775433."
		
	reader := writer contents hnReadstream.
	
	self 
		assert: reader uint8 equals: 24;
		assert: reader uint16 equals: 1234;
		assert: reader uint24 equals: 7899;
		assert: reader uint32 equals: 123124;
		assert: reader atEnd.
		
