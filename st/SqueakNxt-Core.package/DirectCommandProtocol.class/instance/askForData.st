asking
askForData
	| type |
	1 to: 4 do: [:i | 
		type := sensorTypes at: i.
		type = SensorType noSensor
			ifFalse: [type = SensorType lowspeed9V
					ifTrue: [self askForUltrasonicSensorValuesOnPort: i]
					ifFalse: [self askForRegularSensorValuesOnPort: i]]] 