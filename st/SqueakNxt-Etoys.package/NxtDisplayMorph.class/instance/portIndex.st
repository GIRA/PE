accessing
portIndex
	"Returns the index of the portName in the list of available ports.
	If the portName is not one of the available ports, returns 0"
	^ self portNames indexOf: portName ifAbsent: 0.