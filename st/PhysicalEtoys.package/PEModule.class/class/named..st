instance creation
named: fileName
	(self defaultDirectory fileExists: fileName)
		ifFalse: [^ self error: ('The file {1} doesn''t exists' translated format: {fileName})].
	^ self basicNew initializeWith: fileName