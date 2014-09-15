connection
connectOnPort: aString boardType: anArduinoType
	"If the port cant't be open it stores nil, this way we can know if it is
	connected by asking if port is nil.
	In windows we can't open a port using the port name, so I convert the
	string to an integer"

	self isConnected
		ifTrue: [ ^ self ].
	boardType := anArduinoType.
	port := SerialPort new baudRate: anArduinoType firmataRate.
	port := port
		openPort:
			(('COM*' match: aString)
				ifTrue: [ aString asInteger ]
				ifFalse: [ aString ]).
	(Delay forSeconds: 3) wait.
	self isConnected
		ifTrue: [ 
			self startSteppingProcess.
			self controlFirmataInstallation ]