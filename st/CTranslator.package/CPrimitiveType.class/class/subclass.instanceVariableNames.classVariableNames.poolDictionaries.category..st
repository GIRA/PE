definition
subclass: aSymbol instanceVariableNames: instVars classVariableNames: classVars poolDictionaries: poolDicts category: aString
	"Ignore instance variables, even if the user tries to force the superclass to add them"
	^ super subclass: aSymbol instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: aString