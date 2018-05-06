decoder
testutf8

	| encoded stream |
	
	encoded := #[195 169 108 195 168 118 101 32 101 110 32 70 114 97 110 195 167 97 105 115].
	stream := HnConverterReader on: encoded.
	stream converter: HnUTF8Decoder.

	self assert: stream upToEnd equals: 'élève en Français'.
	 