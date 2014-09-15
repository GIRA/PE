drawing
updateHue: filteredForm
	| shift f fOut |
	shift := self color hue + 220 \\ 361.
	shift = 0 ifTrue: [^ filteredForm].	
	f := filteredForm asFormOfDepth: 32.
	fOut := f deepCopy.
	ScratchPlugin
		primShiftHue: f bits
		into: fOut bits
		byDegrees: shift rounded.
	^ fOut asFormOfDepth: 16