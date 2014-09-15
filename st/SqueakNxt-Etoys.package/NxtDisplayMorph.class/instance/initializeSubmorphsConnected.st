initialize-connected
initializeSubmorphsConnected
	| pl pr |
	pl := (PolygonMorph
				vertices: {0 @ -20. -20 @ 0. 0 @ 20}
				color: Color black
				borderWidth: 3
				borderColor: Color black) makeOpen center: self center;
				 right: self center x.
	pr := (PolygonMorph
				vertices: {0 @ -20. 20 @ 0. 0 @ 20}
				color: Color black
				borderWidth: 3
				borderColor: Color black) makeOpen center: self center;
				 left: self center x.
	self addMorphBack: pl;
		 addMorphBack: pr