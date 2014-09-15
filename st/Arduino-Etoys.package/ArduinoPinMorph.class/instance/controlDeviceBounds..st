attaching
controlDeviceBounds: aDevice
	aDevice top < World top
		ifTrue: [aDevice top: World top].
	aDevice left < World left
		ifTrue: [aDevice left: World left].
	aDevice bottom > (World bottom - 25)
		ifTrue: [aDevice bottom: World bottom - 25].
	aDevice right > World right
		ifTrue: [aDevice right: World right]