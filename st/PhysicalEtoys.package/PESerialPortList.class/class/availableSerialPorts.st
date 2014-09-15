general
availableSerialPorts
	^self platformName caseOf: {
		['unix'] -> [self availableSerialPortsForUnix].
		['Mac OS'] -> [self availableSerialPortsForMac].
		['Win32'] -> [self availableSerialPortsForWindows]
	} otherwise: [self error: 'Not supported platform' translated]