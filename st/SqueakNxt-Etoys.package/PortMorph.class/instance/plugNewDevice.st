plugging
plugNewDevice
	| newDevice |
	port isBusy ifTrue: [^self].
	newDevice := self class myDevice.
	newDevice isNil
		ifTrue: [^ self].
	newDevice center: self center.
	newDevice openInWorld.
	self plug: newDevice