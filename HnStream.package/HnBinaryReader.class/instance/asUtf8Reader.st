converting
asUtf8Reader

	^ (HnConverterReader wrapping: self)	
		converter: HnUTF8Decoder