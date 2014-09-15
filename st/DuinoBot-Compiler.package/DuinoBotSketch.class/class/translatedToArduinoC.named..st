translating
translatedToArduinoC: mainSelector named: programName 
	"Useful method to easily translate a program to c"
	^ DuinoBotCProgramTranslator translate: mainSelector of: self asProgramNamed: programName 