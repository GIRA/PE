accessing
cellToScreenRect: aPoint topLeft: topLeft 
	| xRange yRange |
	(self extent containsPoint: aPoint)
		ifFalse: [self
				createCacheFor: (self extent
						merge: (aPoint extent: 1 @ 1))].
	xRange _ xCache at: aPoint x - (cellTopLeft x + offset x) + 1.
	yRange _ yCache at: aPoint y - (cellTopLeft y + offset y) + 1.
	^ (xRange first @ yRange first corner: xRange last @ yRange last)
		translateBy: topLeft