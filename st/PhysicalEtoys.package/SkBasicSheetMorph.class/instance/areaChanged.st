layout
areaChanged
	super areaChanged.
	self
		submorphsDo: [:m | (m isKindOf: SkGridMorph)
				ifTrue: [m areaChanged]]