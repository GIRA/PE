initialize-release
delete
	connector isNil
		ifFalse: [connector delete].
	[self unplug]
		on: NotConnectedLego
		do: ["Nothing"].
	^ super delete