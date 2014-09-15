initializing
initializeWithClass: aClass selector: aSymbol body: aByteString arguments: argVars temporaries: tempVars returnType: aCType selfType: anotherCType
	isMain := false.
	ownerClass := aClass.
	selector := aSymbol.
	body := aByteString.
	arguments := argVars.
	temporaries := tempVars.
	returnType := aCType.
	selfType := anotherCType.
	self initialize.