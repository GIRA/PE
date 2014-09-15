translating
translatedToNxc: mainSelector named: programName 
	"Useful method to easily translate a program to nxc"
	^ NxcProgramTranslator translate: mainSelector of: self asProgramNamed: programName