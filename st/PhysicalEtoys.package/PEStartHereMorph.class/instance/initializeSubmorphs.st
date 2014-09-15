initialize-release
initializeSubmorphs
	arrow := PolygonMorph arrowPrototype
				heading: 180;
				yourself.
	label := TextMorph authoringPrototype
				newContents: 'Start here' translated;
				lock;
				yourself.
	label center: arrow center;
		left: arrow right + 20.
	self bounds: ((Rectangle encompassing: 
						arrow bounds corners, 
						label bounds corners)
							expandBy: 0 @ 15).
	self addMorphBack: arrow;
		addMorphBack: label