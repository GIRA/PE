layout
localCellToScreenRect: aPoint 
	^ self
		cellToScreenRect: (self localToGlobal: aPoint)