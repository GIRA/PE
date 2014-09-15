navigation
replace: aSkSheetMorph 
	aSkSheetMorph area: self area.
	aSkSheetMorph position: self position.
	self owner replaceSubmorph: self by: aSkSheetMorph.
	^ aSkSheetMorph