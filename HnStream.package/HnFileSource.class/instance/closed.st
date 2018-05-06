testing
closed

	handle ifNil: [ ^ true ].
	
	[ self primSize: handle ] 
		on: PrimitiveFailed 
		do: [ ^ true ].

	^ false 