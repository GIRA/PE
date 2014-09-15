structure
uniqueNameAt: aString put: aSkObject 
	"put object with unique name"
	| rule oldKey newName |
	rule _ self rule.
	oldKey _ rule
				keyAtValue: aSkObject
				ifAbsent: [].
	"object has the name already"
	(aString notNil
			and: [aString = oldKey])
		ifTrue: [^ aSkObject].
	"rename"
	oldKey
		ifNotNil: [rule removeAt: oldKey].
	newName _ self
				uniqueNameLike: (aString
						ifNil: [self defaultName])
				satisfy: [:s | (rule includesKey: s) not].
	rule at: newName put: aSkObject.
	"aSkObject parent: rule."
	^ aSkObject