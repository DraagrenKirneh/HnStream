tests
testReadLine3

	self initReaderOn: 'abc' , String cr , String lf, 'a', String lf , String lf;
		assert: reader readLine equals: 'abc';
		assert: reader readLine equals: 'a';
		assert: reader readLine equals: '';
		assert: reader atEnd	