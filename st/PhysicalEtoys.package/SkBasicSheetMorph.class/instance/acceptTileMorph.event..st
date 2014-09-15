drag and drop
acceptTileMorph: aMorph event: evt 
	| object |
	object _ aMorph actualObject.
	self model
		at: (self screenToCell: aMorph topLeft)
		put: object.
	^ true