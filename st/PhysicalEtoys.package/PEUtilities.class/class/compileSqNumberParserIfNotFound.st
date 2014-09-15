class initialization
compileSqNumberParserIfNotFound
	"Compile an empty SqNumberParser class that delegates to Number if the class is not found in the system. This allows us to use RBParser in Etoys"
	
	(Smalltalk hasClassNamed: #SqNumberParser)
		ifFalse: [| newParser |
			newParser := Object subclass: #SqNumberParser
				instanceVariableNames: ''
				classVariableNames: ''
				poolDictionaries: ''
				category: 'Richo'.
			newParser class compile: 'parse: aString ^ Number readFrom: aString']