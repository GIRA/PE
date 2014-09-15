instance creation
forThisPlatform
	(self allSubclasses 
		detect: [:each | each platformName = SmalltalkImage current platformName]
		ifNone: [nil])
			ifNil: [^ self error: SmalltalkImage current platformName, 
								' - Platform not supported' translated]
			ifNotNil: [:actualClass |
				^ actualClass basicNew initialize]