accessing
minVal: aNumber
	cartesianBounds := (cartesianBounds origin x @ aNumber corner: cartesianBounds corner).
	self changed