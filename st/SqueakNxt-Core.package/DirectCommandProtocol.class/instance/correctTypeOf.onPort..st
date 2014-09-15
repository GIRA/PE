sensor connection
correctTypeOf: aNxtSensor onPort: portNumber 
	self controlConnection.
	(sensorTypes at: portNumber)
			= aNxtSensor type
		ifFalse: [self plugSensor: aNxtSensor onPort: portNumber]