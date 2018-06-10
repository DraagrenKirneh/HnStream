tests
testNextOnString

	self initReaderOn: 'abcd';
		assert: reader next equals: $a;
		assert: (reader next: 3) equals: 'bcd';
		assert: reader atEnd;
		deny: reader atStart