tests
testFloatRoundtrip

	writer := HnWriter forBinary.
	
	writer 
		float32: 1.023;
		float64: 543.1123.
	
	reader := writer contents hnReadstream.
	
	self 
		assert: reader float32 closeTo: 1.023;
		assert: reader float64 closeTo: 543.1123
	

	