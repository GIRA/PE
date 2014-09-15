translating
translatedToCpp: mainSelector named: programName 
	"Useful method to easily translate a program to c++"
	^ CppProgramTranslator translate: mainSelector of: self asProgramNamed: programName