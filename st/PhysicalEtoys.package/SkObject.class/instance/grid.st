initialization
grid
	| grid |
	grid _ SkBasicSheetMorph new model: self.
	grid area: self defaultArea.
	^ grid