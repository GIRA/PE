initialize-disconnected
initializeConnectionLabelMorph
	| s1 |
	s1 := 'Port:' translated asMorph fontName: 'BitstreamVeraSans' size: 18;
				 emphasis: 1;
				 center: self center.
	self addMorphBack: s1.