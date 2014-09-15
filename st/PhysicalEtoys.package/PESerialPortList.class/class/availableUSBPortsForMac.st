mac
availableUSBPortsForMac

	| pattern1 |
	pattern1 := 'cu.usb*'.
	 ^(FileDirectory on: '/dev') fileNames
		select: [:e | (pattern1 match: e)]
		thenCollect: [:e |( '/dev/' , e)  asSymbol]