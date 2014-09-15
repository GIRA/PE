timer
firstTick
	^ self costume renderedMorph valueOfProperty: #firstTick ifAbsentPut: [Time millisecondClockValue]