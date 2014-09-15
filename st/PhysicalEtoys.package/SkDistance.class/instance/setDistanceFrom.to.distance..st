updating
setDistanceFrom: m1 to: m2 distance: distance 
	| goal |
	goal _ m1 position direction2: m2 position distance: distance.
	m2 position: goal.
