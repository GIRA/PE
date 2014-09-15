name accessing
findName: aString 
	^ self
		findName: aString
		ifAbsent: [nil]