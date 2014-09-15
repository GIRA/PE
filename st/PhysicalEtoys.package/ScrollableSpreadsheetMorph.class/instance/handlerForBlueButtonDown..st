halo
handlerForBlueButtonDown: anEvent
"It defers the halo to interior only if the click is inside the bounds of the spreadsheet"
^(spreadsheet boundsInWorld containsPoint: anEvent cursorPoint)
	ifTrue: [nil] ifFalse: [self]
