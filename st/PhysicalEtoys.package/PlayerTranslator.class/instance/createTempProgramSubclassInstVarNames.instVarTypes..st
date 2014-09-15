compiling
createTempProgramSubclassInstVarNames: aString instVarTypes: anArray 
	SystemChangeNotifier uniqueInstance doSilently: [
		self commonSuperclass subclass: self programName
			instanceVariableNames: aString
			instanceVariableTypes: anArray
			classVariableNames: ''
			poolDictionaries: ''
			category: self classCategory
			includes: self classIncludes]
