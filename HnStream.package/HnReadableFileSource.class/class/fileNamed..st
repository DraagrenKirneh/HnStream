instance creation
fileNamed: aName

	| file handle |
	
	file := File named: aName.
	handle := file basicOpenForWrite: false.
	
	^ self handle: handle	