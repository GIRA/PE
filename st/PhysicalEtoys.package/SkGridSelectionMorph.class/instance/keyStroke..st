event handling
keyStroke: evt 
	evt keyValue = $c asciiValue
		ifTrue: [^ holder copySelection].
	evt keyValue = $o asciiValue
		ifTrue: [^ holder spawn].
	evt keyValue = $v asciiValue
		ifTrue: [^ holder paste].
	evt keyValue = $x asciiValue
		ifTrue: [^ holder cut].
	self installEditor.
	editor ifNotNil: [editor keyStroke: evt].