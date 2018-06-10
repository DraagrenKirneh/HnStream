tests
testReadLine2

	self initReaderOn: 'abc' , String cr;
		assert: reader readLine equals: 'abc';
		assert: reader atEnd	