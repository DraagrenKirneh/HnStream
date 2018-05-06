accessing
startingAt: aPosition between: aStartIndex and: anEndIndex explore: aBlock
	
	^ reader startingAt: aPosition 
			between: aStartIndex 
			and: anEndIndex 
			explore: [ :explorer |
				aBlock value: (self class wrapping: explorer)
			]