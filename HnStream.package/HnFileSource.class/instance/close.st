finalization
close
	
	File unregister: self.
	
	handle ifNotNil: [ 
		File primClose: handle.
		handle := nil.
	].
	