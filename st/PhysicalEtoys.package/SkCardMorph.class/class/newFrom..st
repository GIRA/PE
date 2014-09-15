instance creation
newFrom: aSkSheetMorph 
	| cardMorph |
	cardMorph _ self model: aSkSheetMorph model.
	cardMorph
		area: (0 @ 1 extent: aSkSheetMorph area width @ 1).
	cardMorph position: aSkSheetMorph position.
	^ cardMorph