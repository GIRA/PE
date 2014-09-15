as yet unclassified
localeChanged
	World allMorphsDo: [:morph |
		(morph isKindOf: StringMorph orOf: TextMorph)
			ifTrue: [| original translated current |
				current := self getContentsOf: morph.
				original := morph 
					valueOfProperty: #originalText
					ifAbsent: [current].
				translated := original translated.
				current ~= translated
					ifTrue: [self setContentsOf: morph to: translated.
						morph setProperty: #originalText toValue: original]]]

