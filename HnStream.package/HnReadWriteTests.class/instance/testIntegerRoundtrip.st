tests
testIntegerRoundtrip

	writer := HnWriter forBinary.
	
	writer 
		int8: 24;
		int16: 1234;
		int24: 78990;
		int32: 12310024.
		"int64: 256775433."
		
	reader := writer contents hnReadstream.
	
	self 
		assert: reader int8 equals: 24;
		assert: reader int16 equals: 1234;
		assert: reader int24 equals: 78990;
		assert: reader int32 equals: 12310024;
		"assert: reader int64 equals: 256775433;"
		assert: reader atEnd.
		
