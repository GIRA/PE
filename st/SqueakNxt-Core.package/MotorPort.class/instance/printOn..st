printing
printOn: aStream 
	portNumber = 1
		ifTrue: [aStream nextPutAll: 'Port A'. ^self].
	portNumber = 2
		ifTrue: [aStream nextPutAll: 'Port B'. ^self].
	portNumber = 3
		ifTrue: [aStream nextPutAll: 'Port C'.^self].
	aStream nextPutAll: 'Invalid port'
