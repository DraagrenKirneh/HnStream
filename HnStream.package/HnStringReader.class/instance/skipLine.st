as yet unclassified
skipLine
	
	self untilEnd: [ 
		self checkNewline ifTrue: [ ^ self ].
		self skip
	].