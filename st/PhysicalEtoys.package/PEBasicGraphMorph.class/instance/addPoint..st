accessing
addPoint: aPoint
	points size = 10000 ifTrue: [points removeFirst].
	points add: aPoint 