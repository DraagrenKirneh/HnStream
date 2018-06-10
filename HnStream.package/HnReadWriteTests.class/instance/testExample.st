tests
testExample

	| data result | 

	data := ByteArray hnStreamContents: [ :w |
		w
			boolean: true;	
			int8: 24;
			float32: 1.0;
			variableInteger: 123123123
	].

	result := Array hnStreamContents: [ :w | | r |
		r := data hnReadstream.
		w 
			<< r boolean;
			<< r int8;
			<< r float32;
			<< r variableInteger
	].  

	self assert: result equals: #(true 24 1.0 123123123)
