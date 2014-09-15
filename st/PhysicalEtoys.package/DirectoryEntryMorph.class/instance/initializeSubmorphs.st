initialization
initializeSubmorphs
self addMorphBack: (SketchMorph withForm: self icon);
	addMorphBack: ' ' asMorph;
	addMorphBack: self entryName asMorph;
	addMorphBack: AlignmentMorph newVariableTransparentSpacer 