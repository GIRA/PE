layout
replaceToSheet: newCellExtent 
	"Create new spreadsheet for the model. And I will be deleted"
	| sheetMorph |
	(newCellExtent y > 1
			and: [newCellExtent x > 1])
		ifTrue: [sheetMorph _ SkBasicSheetMorph new model: model.
			sheetMorph
				area: (0 @ 0 extent: newCellExtent).
			sheetMorph position: self position.
			self owner addMorph: sheetMorph.
			self halo
				ifNotNilDo: [:helo | helo setTarget: sheetMorph].
			^ self delete]