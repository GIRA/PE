testing
isValidDirectory: aFileDirectory 
	^SecurityManager default isInRestrictedMode ifTrue: [
	aFileDirectory pathName = FileDirectory default pathName
		or: [FileDirectory default directoryExists: aFileDirectory pathName]]
ifFalse: [true]