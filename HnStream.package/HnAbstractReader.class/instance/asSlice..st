slicing
asSlice: aNumber

	^ self shallowCopy 
		limit: aNumber;
		yourself  