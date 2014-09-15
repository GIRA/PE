accessing
rule: SkObject
	rule
		ifNotNil: [rule removeDependent: self].
	SkObject
		ifNotNil: [SkObject addDependent: self].
	rule _ SkObject
