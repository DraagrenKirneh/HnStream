
# HnStream

Stream implementation.

# Installation

```smalltalk
Metacello new
   baseline: 'HnStream';
   repository: 'github://DraagrenKirneh/HnStream';
   load.
```


# Usage 

```smalltalk
| data | 

data := ByteArray hnStreamContents: [ :writer |
	writer
		boolean: true;	
		int8: 24;
		float32: 1.0;
		variableInteger: 123123123
].

Array hnStreamContents: [ :writer | | reader |
	reader := data hnReadstream.
	writer 
		<< reader boolean;
		<< reader int8;
		<< reader float32;
		<< reader variableInteger
].  "#(true 24 1.0 123123123)"
```
