tests
testBinary

	self binaryWriter.
	
	writer 
		put: 42;
		putAll: #[1 2 3];
		putAll: { 1 . 2 }.
		
	self assert: writer contents 
		equals: #[ 42 1 2 3 1 2 ]	
	