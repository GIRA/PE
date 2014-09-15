display
setDisplayX: aNumber 
	self costume renderedMorph setProperty: #displayX toValue: (aNumber min: 99 max: 0)