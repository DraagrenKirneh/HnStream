tests
testExplore

	self initReaderOn: 'abc'.
	
	self 
		assert: (reader explore: [ :explorer | explorer upToEnd ]) equals: 'abc';
		assert: reader atStart;
		deny: reader atEnd.