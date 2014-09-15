attaching
attachNewDevice
	| newDevice |

	newDevice := self newDevice.
	newDevice isNil ifTrue: [form := self class form.
self changed.^self].
	newDevice center: self center.
	newDevice openInWorld.
	self attach: newDevice