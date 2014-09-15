class initialization
reinstallSqueakSerialPort
	"If, for some reason, we need to get back the original references to #SerialPort we can reinstall it"
	squeakSerialPort isNil ifTrue: [^ self].
	[Smalltalk at: #SerialPort put: squeakSerialPort]
               on: AttemptToWriteReadOnlyGlobal
               do:[:ex| ex resume: true].
	squeakSerialPort := nil.