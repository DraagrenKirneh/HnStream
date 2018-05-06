as yet unclassified
readUintBytes: aNumber
	
	| integer |
	
	integer := 0.
	
	0 to: aNumber - 1 do: [ :_ | integer := integer + (self next bitShift: aNumber * 8) ].
	
	^ integer 