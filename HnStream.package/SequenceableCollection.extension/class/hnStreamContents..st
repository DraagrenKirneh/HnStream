*HnStream
hnStreamContents: aBlock

	| stream |
	
	stream := (self new: 256) hnWritestream.
	aBlock value: stream.
	
	^ stream contents 