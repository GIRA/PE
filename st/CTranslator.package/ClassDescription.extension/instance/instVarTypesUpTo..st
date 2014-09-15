*CTranslator
instVarTypesUpTo: aClass 
	self = aClass
		ifTrue: [^ self instanceVariableTypes]
		ifFalse: [^ self instanceVariableTypes, (superclass instVarTypesUpTo: aClass)]