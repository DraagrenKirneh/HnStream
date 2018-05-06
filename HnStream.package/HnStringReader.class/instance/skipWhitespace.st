skipping
skipWhitespace

	self untilEnd: [ 
		self peek isSeparator ifFalse: [ ^ self ].
		self skip 	
	].