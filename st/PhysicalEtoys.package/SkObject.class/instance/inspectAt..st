accessing
inspectAt: key 
	| inspector |
	inspector _ SkCellInspector holder: self key: key.
	inspector
		openLabel: (SkParser pointToA1Name: key)