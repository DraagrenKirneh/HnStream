tests
testPeek

	self 
		initReaderOn: 'abc';
		assert: (reader peek) equals: $a;
		assert: reader atStart;
		assert: reader next equals: $a;
		assert: (reader peek) equals: reader next; 
		deny: (reader peekFor: $b);
		assert: (reader peekFor: $c);
		assert: (reader atEnd)
		
	