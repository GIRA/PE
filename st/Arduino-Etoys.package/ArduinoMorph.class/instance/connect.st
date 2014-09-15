connection
connect
	[[WaitMorph showWhile: [
		arduino 
		connectOnPort: self portName 
		boardType: self arduinoType]]
			on: FirmwareNotInstalled
			do: [self installFirmwareIfPossible]]
			on: Error
			do: [:err | self inform: err description]