reading - int
int16

	^ self readIntBytes: 2

	"| n |
	
	n := self next.
	n := (n bitShift: 8) + (self next).
	
	^ n >= 16r8000 
		ifTrue: [  n - 16r10000 ]
		ifFalse: [ n ] "