test - errors
testReadPastEnd

	self initReaderOn: ''.
	
	self should: [ reader next ] raise: HnReadPastEnd.
	
	self initReaderOn: 'ab'.
	
	self should: [ reader next: 3 ] raise: HnReadPastEnd 