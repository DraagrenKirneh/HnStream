private
readIntBytes: aNumber
	
	| integer bits |
	
	integer := self readUintBytes: aNumber.
	bits := 8 * aNumber.	
	
	^ ( integer bitShift: (bits - 1) negated ) > 0 
		ifTrue: [ integer - (1 bitShift: bits) ]
		ifFalse: [ integer ]