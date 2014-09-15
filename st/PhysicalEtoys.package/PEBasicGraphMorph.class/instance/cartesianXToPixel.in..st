calculations
cartesianXToPixel: aNumber in: graphBounds
	^ (graphBounds left + (aNumber - cartesianBounds left * graphBounds width / cartesianBounds width)) rounded