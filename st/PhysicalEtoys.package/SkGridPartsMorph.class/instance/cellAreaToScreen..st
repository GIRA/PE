layout
cellAreaToScreen: aRectangle 
	^ (self isOnHolder
		ifTrue: [holder cellAreaToScreen: aRectangle]
		ifFalse: [super cellAreaToScreen: aRectangle])
		expandBy: self expandSize