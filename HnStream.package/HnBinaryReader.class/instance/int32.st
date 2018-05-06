reading - int
int32
	"Answer the next signed, 32-bit integer from this (binary) stream."
	"Details: As a fast check for negative number, check the high bit of the first digit"

	| integer |

	integer := self uint32.
	
	^ integer >= 16r80000000
		ifTrue: [ -16r100000000 + integer  ]
		ifFalse: [ integer ]		