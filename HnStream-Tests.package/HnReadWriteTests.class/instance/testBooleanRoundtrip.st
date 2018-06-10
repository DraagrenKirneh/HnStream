tests
testBooleanRoundtrip

	writer := HnWriter forBinary.
	writer 
		boolean: true;
		boolean: false.
		
	reader := writer contents hnReadstream.
	
	self 
		assert: reader boolean equals: true;
		assert: reader boolean equals: false