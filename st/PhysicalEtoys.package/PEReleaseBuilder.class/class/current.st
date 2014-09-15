instance creation
current
	| actualClass |
	actualClass := (SmalltalkImage current getSystemAttribute: 3)
		ifNil: [self]
		ifNotNil: [:param | param
			ifEmpty: [self]
			ifNotEmpty: [self allSubclasses
				detect: [:each | param asLowercase 
					= each codeName asLowercase]
				ifNone: [self error: 'Invalid argument']]].
	^ actualClass new