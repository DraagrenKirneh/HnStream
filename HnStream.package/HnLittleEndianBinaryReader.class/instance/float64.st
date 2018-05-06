accessing
float64

	^ (Float basicNew: 2)
		basicAt: 2 put: self uint32;
		basicAt: 1 put: self uint32;
		yourself 
