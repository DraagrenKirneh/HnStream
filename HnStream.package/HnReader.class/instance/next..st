streaming
next: aNumber
	
	| array |
	
	self ensureDistance: aNumber.
	
	array := Array new: aNumber.
	
	1 to: aNumber do: [ :ix | array basicAt: ix put: self next ].
	
	^ array	
	 