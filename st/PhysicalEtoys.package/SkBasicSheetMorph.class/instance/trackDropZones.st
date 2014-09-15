event handling
trackDropZones
	| hand target |
	hand _ self primaryHand.
	((self hasOwner: hand) not
			and: [hand submorphCount > 0])
		ifTrue: [target _ hand submorphs first.
			dropZone _ (self screenToCell: target topLeft)
						extent: ((target respondsTo: #area)
								ifTrue: [target area extent]
								ifFalse: [1 @ 1]).
			(dropZone topLeft x < 1
					or: [dropZone topLeft y < 1])
				ifTrue: [dropZone _ nil].
			self changed]
		ifFalse: [dropZone _ nil.
			self stopSteppingSelector: #trackDropZones]