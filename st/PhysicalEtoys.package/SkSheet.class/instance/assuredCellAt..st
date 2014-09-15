cell accessing
assuredCellAt: key 
	^ self
		cellAt: key
		ifAbsent: [map at: key put: SkValueCell new]