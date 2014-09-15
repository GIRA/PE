initialization
addSheet: aSheet
	self addMorph: (sheet := aSheet).
	self renameTo: sheet externalName