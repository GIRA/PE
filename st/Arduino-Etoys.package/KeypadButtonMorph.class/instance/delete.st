initialize-release
delete
	"Remove the entire keypad if the button is on it... maybe the user pick the button up and the new owner is the World, we don't want to delete the world, right? :)"
	(owner isKindOf: KeypadMorph) ifTrue: [owner delete] ifFalse: [super delete].