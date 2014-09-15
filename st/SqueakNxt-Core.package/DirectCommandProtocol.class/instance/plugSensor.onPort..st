sensor connection
plugSensor: aNxtSensor onPort: aNumber 
	| portNumber type mode |
	self controlConnection.
	portNumber := aNumber - 1.
	type := aNxtSensor type.
	mode := aNxtSensor mode.
	
	self dcSetInputModePort: portNumber sensorType: type sensorMode: mode.
	sensorTypes at: aNumber put: type.
	sensorModes at: aNumber put: mode