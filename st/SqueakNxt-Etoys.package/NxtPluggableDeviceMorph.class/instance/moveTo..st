initialize-release
moveTo: dest 
	self center: dest.
	self top < World top
		ifTrue: [self top: World top].
	self left < World left
		ifTrue: [self left: World left].
	self bottom > (World bottom - 25)
		ifTrue: [self bottom: World bottom - 25].
	self right > World right
		ifTrue: [self right: World right]