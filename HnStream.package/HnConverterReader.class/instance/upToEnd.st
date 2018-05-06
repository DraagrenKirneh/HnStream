fetching
upToEnd

	^ converter readingClass streamContents: [ :writer |
		self untilEnd: [ writer nextPut: self next ]	
	]