tests
testOneElement

	self 
	
		initReaderOn: #(42);
		assert: reader atStart;
		deny: reader atEnd;

		assert: reader next equals: 42;
		deny: reader atStart;
		assert: reader atEnd 	
	