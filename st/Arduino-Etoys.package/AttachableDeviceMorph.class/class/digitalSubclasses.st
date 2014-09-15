as yet unclassified
digitalSubclasses
	^ (self allSubclasses
		select: [:each | each isDigital]) asArray