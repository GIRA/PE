event handling
mouseDown: event 
	self
		selectSelection: (self screenToCell: event position).
	event yellowButtonPressed
		ifTrue: [^ selectionMorph invokeMenu: event].
	"For easy doublecilck to selection"
	event hand waitForClicksOrDrag: selectionMorph event: event.
	event hand mouseFocus: selectionMorph