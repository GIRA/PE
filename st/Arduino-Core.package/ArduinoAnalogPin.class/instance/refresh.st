initializing
refresh
	self refreshMode; refreshValue.
	isActive
		ifTrue: [self protocol activateAnalogPin: number]
		ifFalse: [self protocol deactivateAnalogPin: number] 