accessing
extent: aPoint
	| newExtent |
	newExtent := (aPoint x max: self minimumExtent x) @ (aPoint y max: self minimumExtent y).
	^ super extent: newExtent