display
setDisplayY: aNumber 
	self costume renderedMorph setProperty: #displayY toValue: (aNumber min: 63 max: 0)