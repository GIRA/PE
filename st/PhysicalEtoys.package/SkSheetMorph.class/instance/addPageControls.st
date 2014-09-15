initialization
addPageControls
	| panel prev up title |

	panel := AlignmentMorph newRow 
				color: Color transparent;
				cellInset: 3;
				hResizing: #shrinkWrap;
				vResizing: #shrinkWrap.
	panel addMorphBack: self tickMorph.
	prev := SketchMorph withForm: self prevButtonForm.
	prev
		on: #mouseDown
		send: #previousPage
		to: sheet.
	prev position: 32 @ 3.
	prev setBalloonText: 'View the previous sheet.' translated.
	panel addMorphBack: prev.
	up := SketchMorph withForm: self upButtonForm.
	up
		on: #mouseDown
		send: #upPage
		to: sheet.
	up position: 44 @ 4.
	up setBalloonText: 'View the definision or the parent rule.' translated.
	panel addMorphBack: up.
	title := UpdatingStringMorph new useStringFormat
		target: self;
		putSelector: #setNameTo:;
		getSelector: #externalName.
	panel addMorphBack: title.
	self addMorph: panel