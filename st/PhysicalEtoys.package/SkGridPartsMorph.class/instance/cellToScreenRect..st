layout
cellToScreenRect: aRectangle 
	^ self isOnHolder
		ifTrue: [holder cellToScreenRect: aRectangle]
		ifFalse: [super cellToScreenRect: aRectangle]