updating
stopStepping
	World
		ifNotNil: [(World valueOfProperty: #SkSheet)
				ifNotNilDo: [:set | set remove: self ifAbsent: []]]