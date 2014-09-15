mac
availableSerialPortsForMac

	| pattern1 |
	pattern1 := 'cu.*'.
	 ^(FileDirectory on: '/dev') fileNames
		select: [:e | (pattern1 match: e)]
		thenCollect: [:e |( '/dev/' , e)  asSymbol]