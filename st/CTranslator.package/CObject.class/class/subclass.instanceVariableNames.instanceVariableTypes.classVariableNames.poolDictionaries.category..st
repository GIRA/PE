definition
subclass: nameOfClass instanceVariableNames: instVarNames instanceVariableTypes: instVarTypes classVariableNames: classVarNames poolDictionaries: poolDictnames category: category1 
	"Overwritten to allow defining the inst vars' type info of a class"
	^ (self
		subclass: nameOfClass
		instanceVariableNames: instVarNames
		classVariableNames: classVarNames
		poolDictionaries: poolDictnames
		category: category1)
		instanceVariableTypes: instVarTypes 