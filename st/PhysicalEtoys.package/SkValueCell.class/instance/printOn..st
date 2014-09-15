printing
printOn: aStream 
	aStream nextPutAll: '[' , self contents printString , ' | ' , formula printString , ']'.
	aStream nextPutAll: '('.
	aStream print: self identityHash;
		 nextPutAll: ')'