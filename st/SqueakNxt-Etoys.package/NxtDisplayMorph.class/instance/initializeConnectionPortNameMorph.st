initialize-disconnected
initializeConnectionPortNameMorph
	| s2 portIndex |
	s2 := portName asMorph
				fontName: 'BitstreamVeraSans' size: 18;				 
				center: self center x @ (self center y + 20).
	self addMorphBack: s2.
	"Initialize little arrows"
	"If portIndex = 0 then the port was written by the user. Don't show the little arrows"
	portIndex := self portIndex.
	portIndex = 0
		ifTrue: [^self].
	"If portIndex > 1 then we can add the previous arrow"
	portIndex > 1
		ifTrue: [self addMorphBack: (LittleArrowMorph leftArrow center: s2 leftCenter - (10@0))].
	"If portIndex < portNames size then we can add the next arrow"
	portIndex < self portNames size
		ifTrue: [self addMorphBack: (LittleArrowMorph rightArrow center: s2 rightCenter + (10@0))]