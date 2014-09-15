layout
setExtentFromHalo: newExtent 
	self isOnHolder
		ifTrue: [holder setCellExtentFromHalo: newExtent]