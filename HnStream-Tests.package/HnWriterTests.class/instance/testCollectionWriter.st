tests
testCollectionWriter

	| obj |
	obj := Object new.
	self collectionWriter.
	
	writer << obj; << true; put: 'stuff'; << 42; << Object.
		
	self 
		assert: writer contents 
		equals: { obj . true . 'stuff' . 42 . Object }
	
	

