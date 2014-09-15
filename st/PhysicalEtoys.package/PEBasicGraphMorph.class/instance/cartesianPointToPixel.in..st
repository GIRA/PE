calculations
cartesianPointToPixel: aPoint in: graphBounds
	^ (self cartesianXToPixel: aPoint x in: graphBounds)
		@ (self cartesianYToPixel: aPoint y in: graphBounds)