accessing
codeString
	^ self ruleName , ' direction: ' , self direction printString , ' size: ' , (self size
			ifNil: [0]) printString