event handling
installEditor
	self area ifNil: [^self].
	editor
		ifNil: [editor _ PluggableTextMorph
						on: holder
						text: #editContents
						accept: #editContents:].
	editor setProperty: #alwaysAccept toValue: true.
	editor acceptOnCR: true.
	editor hideScrollBarIndefinitely.
	editor borderWidth: 0.
	editor
		bounds: (holder cellToScreenRect: self area origin).
	editor selectAll.
	self addMorphFront: editor.
	ActiveHand newKeyboardFocus: editor.
	editor
		on: #mouseLeave
		send: holder
		to: #acceptCell