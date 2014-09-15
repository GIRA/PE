as yet unclassified
wantsChangeSetLogging
	"Log changes for Player itself, but not for automatically-created subclasses like Player1, Player2, but *do* log it for uniclasses that have been manually renamed."

	^ (self == self officialClass or:
		[(self name beginsWith: self officialClass asString) not]) or:
			[Preferences universalTiles]