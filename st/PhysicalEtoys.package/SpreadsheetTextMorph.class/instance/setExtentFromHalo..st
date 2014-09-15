as yet unclassified
setExtentFromHalo: aPoint
	super setExtentFromHalo: aPoint.
	self triggerEvent: #extentChange with: self