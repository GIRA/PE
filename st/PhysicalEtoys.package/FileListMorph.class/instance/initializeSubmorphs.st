initialization
initializeSubmorphs
	self addMorphBack: (AlignmentMorph newRow vResizing: #shrinkWrap;
			 color: Color transparent;
			 addMorphBack: (self currentDirectoryName asMorph emphasis: TextEmphasis bold emphasisCode);
			 addMorphBack: AlignmentMorph newVariableTransparentSpacer).
	self directories , self files
		do: [:entry | self addMorphBack: ((DirectoryEntryMorph on: entry)
					on: #mouseUp
					send: #mouseUp:fromMorph:
					to: self;
					
					on: #doubleClick
					send: #doubleClick:fromMorph:
					to: self)]