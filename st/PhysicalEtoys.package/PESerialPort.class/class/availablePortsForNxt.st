vocabulary
availablePortsForNxt
	self updateVocabularyForNxt. "Just in case"
	^ #(#USB), PESerialPortList availableSerialPorts asSet asSortedCollection, #(#'other...' )