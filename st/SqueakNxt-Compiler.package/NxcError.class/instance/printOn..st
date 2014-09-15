printing
printOn: aStream
	aStream nextPutAll: position asString;
		nextPut: $:;
		space;
		nextPutAll: description asString