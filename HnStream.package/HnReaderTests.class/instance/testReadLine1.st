tests
testReadLine1

	self initReaderOn: 'abc';
		assert: reader readLine equals: 'abc';
		assert: reader atEnd	