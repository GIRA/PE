initializing
initialize
	super initialize.
	self setType: #Number;
		addMorphBack: ((Vocabulary vocabularyNamed: 'Number') defaultArgumentTile height: 32);
		hResizing: #shrinkWrap; height: 32; color: Color transparent;
		borderWidth: 0; layoutInset: (0@0); cellInset: 0@0; color: (Color r: 0.806 g: 1.0 b: 0.806)