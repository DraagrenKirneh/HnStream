streaming
next: aNumber
	
	| array |
	
	self ensureDistance: aNumber.
	
	array := source species new: aNumber.
	
	1 to: aNumber do: [ :ix | array at: ix put: self next ].
	
	^ array	
	 