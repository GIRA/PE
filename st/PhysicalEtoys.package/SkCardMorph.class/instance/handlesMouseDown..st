event handling
handlesMouseDown: evt 
	^ (self screenToCell: evt position)
		= self cellOrigin