as yet unclassified
useNext: aBlock

	self atEnd ifFalse: [ 
		aBlock value: self next	
	]