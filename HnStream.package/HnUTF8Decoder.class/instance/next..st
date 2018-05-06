accessing
next: aNumber

	^ String streamContents: [ :writer |
		aNumber timesRepeat: [ writer nextPut: self next ]	
	]