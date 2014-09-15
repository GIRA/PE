unix
availableSerialPortsForUnix
	| patterns |
	patterns := #('ttyS*' 'rfcomm*' 'ttyUSB*' 'ttyACM*').
	 ^(FileDirectory on: '/dev') fileNames
		select: [:e | (patterns anySatisfy: [:pattern | pattern match: e])]
		thenCollect: [:e |( '/dev/' , e)  asSymbol]