accessing
cellAreaToScreen: aRectangle topLeft: topLeft 
	^ (self cellToScreenRect: aRectangle topLeft topLeft: topLeft) topLeft - border corner: (self cellToScreenRect: aRectangle bottomRight - 1 topLeft: topLeft) bottomRight + border