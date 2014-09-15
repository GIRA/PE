printing
printOn: aStream
	aStream
		nextPutAll: self header; cr;
		nextPutAll: '=================='; cr;
		nextPutAll: self source