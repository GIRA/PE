accessing
maxVal: aNumber
	cartesianBounds := (cartesianBounds origin corner: cartesianBounds corner x @ aNumber).
	self changed