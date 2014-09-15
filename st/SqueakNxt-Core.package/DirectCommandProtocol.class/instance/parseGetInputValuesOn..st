receiving
parseGetInputValuesOn: data
	| inputPort isValid isCalibrated sensorType sensorMode |
	inputPort :=( data at: 6) asInteger + 1.
	isValid := data at: 7.
	isCalibrated := data at: 8.
	sensorType := data at: 9.
	sensorMode := data at: 10.
	rawValues at: inputPort put: ((data at: 11)  + ((data at: 12)  * 256)).
	normalizedValues  at: inputPort put:  ((data at: 13)  + ((data at: 14)  * 256)).
	scaledValues  at: inputPort put:  ((data at: 15)  + ((data at: 16)  * 256))
 