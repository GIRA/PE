drag and drop
acceptDroppingMorph: aMorph event: evt 
	| cellPos successed |
	cellPos _ self screenToCell: aMorph topLeft.
	(cellPos x < 1
			or: [cellPos y < 1])
		ifTrue: [self beep: 'scratch'.
			^ aMorph rejectDropMorphEvent: evt].
	successed _ false.
	successed _ (aMorph isKindOf: SkGridPartsMorph)
				ifTrue: [self acceptRuleMorph: aMorph event: evt]
				ifFalse: [aMorph class = PhraseTileMorph
						ifTrue: [self acceptPhraseTileMorph: aMorph event: evt]
						ifFalse: [aMorph class = TileMorph
								ifTrue: [self acceptTileMorph: aMorph event: evt]]].
	successed
		ifTrue: [self beep: 'clink']
		ifFalse: [self beep: 'scratch'.
			aMorph rejectDropMorphEvent: evt]