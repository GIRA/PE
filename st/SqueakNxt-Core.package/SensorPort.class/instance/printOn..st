printing
printOn: aStream 
	(portNumber between: 1 and: 4)
		ifTrue: [aStream nextPutAll: 'Port ' , portNumber asString]
		ifFalse: [aStream nextPutAll: 'Invalid port']