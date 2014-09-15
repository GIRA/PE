cell accessing
cellAt: key 
 	^ self
		cellAt: key
		ifAbsent: [NullCell]