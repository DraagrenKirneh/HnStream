as yet unclassified
nextCodepoint

	| byte | 
	
	byte := stream next.
	byte < 16r80 ifTrue: [ ^ byte ].
	
	(byte bitAnd: 16rE0) = 16rC0
		ifTrue: [ | code |
			code := byte bitAnd: 16r1F.
			code := self nextContinuation: code.
			code < 16r80 ifTrue: [ self errorOverlong ]. 
			^ code 
		].
	
	(byte bitAnd: 16rF0) = 16rE0
		ifTrue: [ | code |
			code := byte bitAnd: 16rF.
			code := self next: 2 continuation: code.
			code < 16r800 ifTrue: [ self errorOverlong ].
			(code between: 16rD800 and: 16rDFFF) ifTrue: [ self errorOutsideRange ].
			code = 65279 ifTrue: [ self nextCodepoint ].
			^ code
	].	
	
	(byte bitAnd: 16rF8) = 16rF0
		ifTrue: [ | code |
			code := byte bitAnd: 16r7.
			code := self next: 3 continuation: code.
			code < 16rFFFF ifTrue: [ self errorOverlong ].
			^ code 
		].
	
	self errorIllegalLeadingByte
	
	
