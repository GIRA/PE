layout
setExtentFromHalo: newExtent 
	"Answer new cell size"
	| newSize |
	newSize _ (self screenToCell: self topLeft + newExtent)
				- self area origin.
	newSize _ newSize max: 1 @ 1.
	self area extent ~~ newSize
		ifTrue: [self
				area: (self area origin extent: newSize)].
	^ newSize