*physicaletoys
createTemporaryDirectory
	| randomName |
	[randomName := (String new: 20) 
		collect: [:ign | Character value: ((65 to: 90), (97 to: 122)) atRandom]]
			doWhileTrue: [self directoryExists: randomName].
	^ self createDirectory: randomName;
		directoryNamed: randomName