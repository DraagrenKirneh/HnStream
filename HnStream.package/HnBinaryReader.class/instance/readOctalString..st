as yet unclassified
readOctalString: count
	
	| out |
	
	out := 0.
	count timesRepeat: [ | part |
		part := self next.
		part > 0 ifTrue: [ 
			out := out << 3 | (part - 48)
		]
	].
	
	^ out

	