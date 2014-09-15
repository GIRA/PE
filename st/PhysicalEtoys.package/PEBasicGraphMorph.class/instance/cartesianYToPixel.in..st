calculations
cartesianYToPixel: aNumber in: graphBounds
	^ (graphBounds bottom - (aNumber - cartesianBounds top * graphBounds height / cartesianBounds height)) rounded