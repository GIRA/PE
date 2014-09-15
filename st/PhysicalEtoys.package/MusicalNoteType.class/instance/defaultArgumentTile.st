as yet unclassified
defaultArgumentTile
	| aTile choices |
	aTile _  MusicalNoteTile new
		choices: (choices _ self choices)
		dataType: self vocabularyName.
	aTile addArrows.
	aTile setLiteral: choices first.
	^ aTile