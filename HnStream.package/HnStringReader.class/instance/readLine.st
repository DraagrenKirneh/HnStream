as yet unclassified
readLine
	
	self ensureContent.
	
	^ String streamContents: [ :writer |
		[ self atEnd or: [ self checkNewline ] ] whileFalse: [ 
			writer nextPut: self next	 
		]
	]