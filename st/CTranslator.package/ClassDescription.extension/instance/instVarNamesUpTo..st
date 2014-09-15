*CTranslator
instVarNamesUpTo: aClass 
	self = aClass
		ifTrue: [^ self instVarNames]
		ifFalse: [^ self instVarNames, (superclass ifNil: [#()] ifNotNil: [:sc | sc instVarNamesUpTo: aClass])]