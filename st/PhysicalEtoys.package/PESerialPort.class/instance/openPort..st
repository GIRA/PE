open/close
openPort: portId
	portNumber notNil ifTrue: [^ self].
	"ScratchPlugin only supports 32 ports"
	portId asInteger > 32 
		ifTrue: [^ self openSqueakPort: portId].
	portNumber := portId isString
		ifTrue: [self plugin openPortNamed: portId baud: baudRate]
		ifFalse: [self plugin openPortNamed: 'COM', portId asString baud: baudRate].
	portNumber = -1
		ifTrue: [^ portNumber := nil]
		ifFalse: [^ self]