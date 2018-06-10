tests
testReadCollection

	| obj |
	
	obj := Object new.
	self initReaderOn: { obj . true . 'stuff' . 42 . Object }.
	
	self 
		assertNextEquals: obj;
		assertNextEquals: true;
		assertNextEquals: 'stuff';
		assertNextEquals: 42;
		assertNextEquals: Object;
		assertAtEnd 