initialize-release
close

	(destination class canUnderstand: #close)
		ifTrue:  [ destination close ].
	destination := nil.