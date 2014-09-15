accessing
printOn: aStream 
	| aName |
	super printOn: aStream.
	(aName _ self ruleName printString) notNil
		ifTrue: [aStream nextPutAll: '<' , aName , '>'].
	aStream nextPutAll: '('.
	aStream
		print: self identityHash;
		nextPutAll: ')'