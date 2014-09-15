accessing
area: aRectangle 
	editor
		ifNil: [super area: aRectangle]
		ifNotNil: [(editor text isEmpty not
					and: [editor text first = $=
							and: [editor hasUnacceptedEdits]])
				ifTrue: [editor
						correctSelectionWithString: (SkParser pointToA1Name: aRectangle origin)]
				ifFalse: [editor accept.
					editor _ nil.
					super area: aRectangle]]