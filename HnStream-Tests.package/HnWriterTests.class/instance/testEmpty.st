tests
testEmpty

	writer := HnWriter forString.
	
	self assert: writer contents equals: ''.
	
	writer put: $a.
	
	self assert: writer contents equals: 'a'.
	
	writer putAll: 'abc'; putAll: { $a . $b . $c }.
	
	self assert: writer contents equals: 'aabcabc'
	
	
	