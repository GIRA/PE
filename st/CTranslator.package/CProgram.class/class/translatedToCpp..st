translating
translatedToCpp: mainSelector
	"Useful method to easily translate a program to c++. By default the class name is used as program name"
	^ self translatedToCpp: mainSelector named: self name