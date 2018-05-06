instance creation
putAll: aCollection

	aCollection do: [:v | self put: v].
	
	^ aCollection 