accessing
selection: aRectangle 
	(submorphs indexOf: selectionMorph) = 1
		ifFalse: [self addMorphFront: selectionMorph].
	selectionMorph area: aRectangle