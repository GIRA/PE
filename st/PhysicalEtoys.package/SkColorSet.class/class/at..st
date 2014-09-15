accessing
at: anObject 
	^ map
		at: anObject
		ifAbsent: [self
				projectAt: anObject
				ifAbsent: [default]]