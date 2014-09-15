initialize-release
initializeString
	| string |
	string := 'NXT' asMorph fontName: 'Accuat' size: 18.
	string left: self left + 10;
		 bottom: self bottom - 5.
	self addMorph: string