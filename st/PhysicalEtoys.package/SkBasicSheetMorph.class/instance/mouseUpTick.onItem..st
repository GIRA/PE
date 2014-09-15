event handling
mouseUpTick: evt onItem: aMorph 
	aMorph isTicking
		ifTrue: [model stopStepping.
			aMorph isTicking: false]
		ifFalse: [model startStepping.
			aMorph isTicking: true]