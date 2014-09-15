*PhysicalEtoys-skeleton-base-arrow
showPointArrowFrom: morph1 to: morph2 label: aString 
	"Morph new showPointArrowFrom: (Morph new position: 0@0) to: (Morph  
	new position: 200@200) label: 'test'"
	| p1 p2 arrow label connector |
	p1 := morph1 center.
	p2 := morph2 center.
	arrow := PolygonMorph arrowPrototype.
	arrow
		borderColor: (TranslucentColor
				r: 1.0
				g: 0.3
				b: 0.0
				alpha: 0.6).
	arrow
		setVertices: (Array with: p1 with: p2).
	arrow dashedBorder: {30. 30. Color transparent. 0. -10};
		 startStepping.
	arrow openInWorld.
	arrow addAlarm: #delete after: 500