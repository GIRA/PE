accessing
keepCellOriginDo: aBlock 
	| oldOriginByScreen delta |
	oldOriginByScreen _ (self cellToScreenRect: self cellOrigin) topLeft.
	aBlock value.
	self areaChanged.
	delta _ oldOriginByScreen - (self cellToScreenRect: self cellOrigin) topLeft.
	self topLeft: self topLeft + delta.
	self areaChanged