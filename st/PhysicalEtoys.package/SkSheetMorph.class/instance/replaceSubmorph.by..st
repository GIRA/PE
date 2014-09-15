submorphs-add/remove
replaceSubmorph: oldMorph by: newMorph
	"Update page controls if the sheet gets replaced."
	^ oldMorph == sheet
		ifTrue: [self submorphsDo: [:each | each delete];
					addSheet: newMorph;
					addPageControls]
		ifFalse: [super replaceSubmorph: oldMorph by: newMorph]