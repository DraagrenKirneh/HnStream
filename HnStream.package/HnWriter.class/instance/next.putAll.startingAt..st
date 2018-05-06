instance creation
next: anInteger putAll: aCollection startingAt: startIndex
	
	startIndex to: anInteger + startIndex do: [ :ix |
		self put: (aCollection at: ix)	
	]