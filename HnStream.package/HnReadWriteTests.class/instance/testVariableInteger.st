tests
testVariableInteger
	
	| numbers data out |
	
	numbers := { 0 . 1 . 2 . 16rFAFAFA . 16rFEDCBA987654210 }.
	data := ByteArray hnStreamContents: [ :bs |
		numbers do: [ :each | bs variableInteger: each ]	
	].

	out := Array hnStreamContents: [ :w | | stream |
		stream := data hnReadstream.
		stream untilEnd: [ w put: stream variableInteger ]	
	].

	self assert: numbers equals: out