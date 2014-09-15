direct commands
dcSetInputModePort: inputPort sensorType: sensorType sensorMode: sensorMode
	"inputPort Range: 0-3"
	| msg |
	msg := {self class setInputMode.
			inputPort.
			sensorType.
			sensorMode} asByteArray.
	self send: msg replySize: 0