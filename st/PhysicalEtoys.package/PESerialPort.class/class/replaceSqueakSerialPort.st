class initialization
replaceSqueakSerialPort
	"It will replace all references to the global #SerialPort with a reference to #PESerialPort. This allows me to provide a different abstraction for SerialPort than the one squeak provides, but without changing all the code that uses it.
	It's a dirty hack, I know but it shouldn't be dangerous"
	squeakSerialPort notNil ifTrue: [^ self].
	squeakSerialPort := SerialPort.
	[Smalltalk at: #SerialPort put: PESerialPort]
               on: AttemptToWriteReadOnlyGlobal
               do:[:ex| ex resume: true].