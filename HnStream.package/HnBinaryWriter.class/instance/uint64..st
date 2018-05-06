unsigned int
uint64: anInteger
	
	8 to: 1 by: -1 do: [ : ix |
		writer put: (anInteger digitAt: ix)
	].