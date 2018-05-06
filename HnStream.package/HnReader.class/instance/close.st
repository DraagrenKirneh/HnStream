accessing
close

	(source class canUnderstand: #close)
		ifTrue:  [ source close ].
	source := nil.