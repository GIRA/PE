utils
deviceNameOn: portName
	| status iterator buf findPort deviceName |
	self flag: #Richo. "This might not work on Linux"
	"First check that we have a well formed port name"
	self assert: ('COM*' match: portName) description: 'Invalid port' translated.

	"Function to extract the port from a device name"
	findPort := [:str |
		(str copyFrom: (str findLastOccuranceOfString: '::' 
				startingAt: 0) + 2
			to: str size)].

	"Create an iterator"
	status := FantomStatus new: 0.
	iterator := Fantom apiCreateNxtIteratorSearchBluetooth: 1 for: 5 status: status.
	status check.

	"Keep iterating until we found a matching name or the status is no more items"
	[buf := ByteArray new: 256.
	Fantom apiNxtIteratorGetName: iterator resourceName: buf status: status.
	status check]
		doWhileFalse: [deviceName := (buf upTo: 0) asString.
			(portName allButFirst: 3) = (findPort value: deviceName)
			or: [Fantom apiNxtIteratorAdvance: iterator status: status.
				status isNoMoreItems]].

	"Only return the device name if the status is successfull"
	[^ status isSuccess ifTrue: [deviceName] ifFalse: [nil]]
		ensure: ["Destroy nxt iterator"
			Fantom apiDestroyNxtIterator: iterator status: status]