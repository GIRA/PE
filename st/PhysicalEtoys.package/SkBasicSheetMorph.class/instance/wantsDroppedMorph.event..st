drag and drop
wantsDroppedMorph: aMorph event: anEvent 
	^ aMorph class = PhraseTileMorph
		or: [aMorph class = TileMorph
				or: [aMorph isKindOf: SkGridPartsMorph]]