tests
testCustomExplore

	| content |

	self initReaderOn: 'abcd'.
	
	content := reader 
		startingAt: 1 
		between: 1 
		and: 3 explore: [ :ex | ex upToEnd ].
	
	self 
		assert: content equals: 'bc';
		assert: reader atStart;
		deny: reader atEnd.