initialization
grid: aSkGridMorph border: aNumber 
	border _ aNumber.
	grid _ aSkGridMorph.
	cellTopLeft _ aSkGridMorph visibleArea topLeft.
	self
		createCacheFor: (cellTopLeft extent: 1 @ 1)