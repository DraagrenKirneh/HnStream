tests
testEmpty

	self 
		initReaderOn: #();
		assert: reader atStart;
		assert: reader atEnd