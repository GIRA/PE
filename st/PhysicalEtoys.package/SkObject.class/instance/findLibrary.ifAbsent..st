name accessing
findLibrary: aString ifAbsent: aBlock 
	^ (self class root findName: 'Library')
		at: aString
		ifAbsent: aBlock