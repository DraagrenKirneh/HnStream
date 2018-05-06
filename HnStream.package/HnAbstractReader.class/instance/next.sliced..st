slicing
next: aNumber sliced: aBlock

	| slice |
	
	slice := self asSlice: aNumber.
	
	^ aBlock value: slice