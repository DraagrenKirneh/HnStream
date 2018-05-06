instance creation
fileNamed: aName writing: aBlock

	| source stream |
	
	source := self fileNamed: aName.
	stream := source hnWritestream .
	
	^ [ aBlock value: stream ] ensure: [ stream close ]