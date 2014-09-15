sensor connection
unplugSensorOnPort: aNumber 
	| portNumber type mode |
	self controlConnection.
	portNumber := aNumber - 1.
	type := SensorType noSensor.
	mode := SensorMode rawmode.
	
	self dcSetInputModePort: portNumber sensorType: type sensorMode: mode.
	sensorTypes at: aNumber put: type.
	sensorModes at: aNumber put: mode.