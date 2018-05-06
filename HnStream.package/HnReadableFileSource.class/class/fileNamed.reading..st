instance creation
fileNamed: aName reading: aBlock
	
	| source stream |
	
	source := self fileNamed: aName.
	stream := source hnReadstream.
	
	^ [ aBlock value: stream ] ensure: [ stream close ]