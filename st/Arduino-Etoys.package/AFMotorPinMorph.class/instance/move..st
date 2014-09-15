as yet unclassified
move: aDevice
	"Move the device according to my position on the board"
	self center x > owner center x
		ifTrue: [aDevice left: self right + 50]
		ifFalse: [aDevice right: self left - 50].
	self center y > owner center y
		ifTrue: [aDevice top: self bottom - 50]
		ifFalse: [aDevice bottom: self top - 20].
	self controlDeviceBounds: aDevice