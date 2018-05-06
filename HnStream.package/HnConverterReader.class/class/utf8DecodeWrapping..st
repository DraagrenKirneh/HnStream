as yet unclassified
utf8DecodeWrapping: aReader

	^ (self wrapping: aReader) 	
		converter: HnUTF8Decoder 		