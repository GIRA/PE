rotate scale and flex
rotationDegrees: degrees 
	| d newDirection |
	d _ degrees \\ 360.
	newDirection _ #right.
	(d < 45
			or: [315 <= d])
		ifTrue: [newDirection _ #right]
		ifFalse: [d < 135
				ifTrue: [newDirection _ #down]
				ifFalse: [d < 225
						ifTrue: [newDirection _ #left]
						ifFalse: [d < 315
								ifTrue: [newDirection _ #up]]]].
	self forwardDirection: degrees.
	self direction ~~ newDirection
		ifTrue: ["Transcript show: ActiveHand target printString."
			self direction: newDirection.
			self halo
				ifNil: [self isOnHolder
						ifTrue: [holder model textAt: self cellOrigin put: '=' , model codeString]]].
	self changed