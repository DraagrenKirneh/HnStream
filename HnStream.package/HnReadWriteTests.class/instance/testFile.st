tests
testFile

	| fileName |
	
	fileName := 'HnReadWriteTestFile.abc'.
	
	[ 
		HnWriteableFileSource fileNamed: fileName writing: [ :wr |
			wr uint16: 42
		].
	
		HnReadableFileSource fileNamed: fileName reading: [ :rdr |
			self 
				assert: rdr uint16 equals: 42;
				assert: rdr atEnd 	
		]
	
	] ensure: [ fileName asFileReference ensureDelete ].