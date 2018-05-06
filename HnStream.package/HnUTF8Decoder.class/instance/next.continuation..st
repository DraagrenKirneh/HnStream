as yet unclassified
next: aNumber continuation: startByte

	| code |
	
	code := startByte.	
	aNumber timesRepeat: [ 
		code := self nextContinuation: code 
	].
	
	^ code