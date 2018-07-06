fetching
next: aNumber
	
	| array |
	
	reader ensureDistance: aNumber.
	
	array := reader source species new: aNumber.
	
	1 to: aNumber do: [ :ix | array at: ix put: self next ].
	
	^ array	
	 