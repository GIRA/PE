drawing
drawOn: aCanvas
	| clip |
	clip _ aCanvas copyClipRect: self bounds.
	super drawOn: aCanvas.
	editor
		ifNil: [holder drawBorder: clip.
			holder drawContents: clip]