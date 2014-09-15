initialization
attachNewDevice
	| newDevice |
	newDevice := self newDevice.
	newDevice isNil ifTrue: [self borderColor: Color transparent.^self].
	newDevice center: self center.
	newDevice openInWorld.
	self attach: newDevice