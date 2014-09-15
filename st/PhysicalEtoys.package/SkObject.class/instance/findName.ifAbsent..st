name accessing
findName: aString ifAbsent: aBlock 
	"Search parent if not found"
	aString = 'parent'
		ifTrue: [^ self parent].
	^ self
		at: aString
		ifAbsent: [(self = self parent
					or: [self parent isNil])
				ifTrue: [self findLibrary: aString ifAbsent: aBlock]
				ifFalse: [self parent findName: aString ifAbsent: aBlock]]