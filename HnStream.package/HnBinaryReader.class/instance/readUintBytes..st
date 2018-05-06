private
readUintBytes: aNumber
	
	| integer |
	
	integer := 0.
	
	1 to: aNumber do: [ :_ | integer := (integer bitShift: 8) + self next ].
	
	^ integer 