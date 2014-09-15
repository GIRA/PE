event handling
mouseDown: evt 
	"For easy doublecilck to selection"
	evt hand waitForClicksOrDrag: self event: evt.
	evt yellowButtonPressed
		ifTrue: [^ model invokeCardMenu: evt]
		ifFalse: [(self grabArea containsPoint: evt position)
				ifTrue: [evt hand grabMorph: self]]