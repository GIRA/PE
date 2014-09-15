attaching
isAttachedToPin: aPin
	^ self isAttached and: [pins includes: aPin]