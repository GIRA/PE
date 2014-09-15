change set logging
wantsChangeSetLogging
	^ (self == self officialClass
			or: [(self name beginsWith: self officialClass asString) not])
		or: [Preferences universalTiles]