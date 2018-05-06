tests
testUpToEnd

	self initReaderOn: 'abcd';
		assert: reader upToEnd equals: 'abcd';
		assert: reader atEnd;
		deny: reader atStart 