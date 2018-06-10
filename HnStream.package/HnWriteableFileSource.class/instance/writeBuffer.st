private
writeBuffer

	self 
		primSetPosition: handle to: buffer offset;
		primWrite: handle from: buffer data startingAt: 1 count: buffer count.
		
	buffer rollover