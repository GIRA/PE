accessing
portIndex: aNumber
	"Set the new portNumber to match the new index only if the new
	index is an available portName"
	(self portNames at: aNumber ifAbsent: nil)
		ifNotNil: [:newPortName |
			self portName: newPortName]
	