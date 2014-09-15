accessing
cardMorphAt: aPoint ifAbsent: aBlock 
	^ self submorphs
		detect: [:m | m class = SkCardMorph
				and: [m cellOrigin = aPoint]]
		ifNone: aBlock