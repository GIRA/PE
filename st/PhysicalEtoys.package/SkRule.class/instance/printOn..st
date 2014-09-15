printing
printOn: aStream 
	observer printOn: aStream.
	aStream nextPutAll: ' rule: {'.
	subjects
		do: [:each | 
			each printOn: aStream.
			aStream nextPut: $.].
	aStream nextPutAll: '} do: '.
	rule printOn: aStream.