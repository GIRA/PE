translating
translatedToC: mainSelector named: programName 
	"Useful method to easily translate a program to c"
	^ CProgramTranslator translate: mainSelector of: self asProgramNamed: programName