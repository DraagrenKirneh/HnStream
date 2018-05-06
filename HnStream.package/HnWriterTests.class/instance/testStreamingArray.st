tests
testStreamingArray

	| result |
	
	result := Array hnStreamContents: [ :w | ].
	self assert: result equals: #().
	
	result := Array hnStreamContents: [ :w | w put: 32; putAll: { $a . #symbol } ].
	self assert: result equals: #(32 $a symbol)