initializing
initializeLetterMorph
	| letterMorph |
	letterMorph := (self letters at: port portNumber) asMorph fontName: 'BitstreamVeraSans' size: 22;
				 emphasis: 1;
				 center: self center.
	self addMorph: letterMorph