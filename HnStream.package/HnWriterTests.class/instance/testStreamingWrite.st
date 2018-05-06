tests
testStreamingWrite

	self stringWriter.
	
	writer << #abcd.
	
	self assert: writer contents equals: 'abcd'.
	
	writer reset.
	
	self assert: writer contents equals: ''.
	
	
