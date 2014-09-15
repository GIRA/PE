vocabulary
availablePorts
	self updateVocabulary. "Just in case"
	^ PESerialPortList availableSerialPorts asSet asSortedCollection, #(#'other...' )