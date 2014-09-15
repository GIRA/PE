stepping
startSteppingProcess
	steppingProcess notNil
		ifTrue: [^ self].
	steppingProcess := [[self step] repeat] forkNamed: self asString 