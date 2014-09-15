drawing
updateBrightness: filteredForm
	| shift f fOut |
	shift := self color brightness * 100 / 5.
	shift = 0 ifTrue: [^ filteredForm].	
	f := filteredForm asFormOfDepth: 32.
	fOut := f deepCopy.
	ScratchPlugin
		primShiftBrightness: f bits
		into: fOut bits
		by: shift rounded.
	^ fOut asFormOfDepth: 16