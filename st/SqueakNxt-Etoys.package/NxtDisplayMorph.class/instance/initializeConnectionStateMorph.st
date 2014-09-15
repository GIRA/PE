initialize-disconnected
initializeConnectionStateMorph
	| stringMorph |
	stringMorph := '<' asMorph fontName: 'Accuat' size: 18.
	stringMorph position: self position + 5.
	self addMorphBack: stringMorph