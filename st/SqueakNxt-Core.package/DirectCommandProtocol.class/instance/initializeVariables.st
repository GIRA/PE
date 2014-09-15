initialize-release
initializeVariables
	batteryLevel := 0.
	rawValues := (Array new: 4 withAll: 0).
	normalizedValues := (Array new: 4 withAll: 0).
	scaledValues := (Array new: 4 withAll: 0).
	lsCurrentPort := 0.
	lsBytesReady := (Array new: 4 withAll: 0).
	lsBytesRead := (Array new: 4 withAll: 0).
	lsRxData := (Array new: 4 withAll: 0).
	sensorTypes := (Array new: 4 withAll: 0).
	sensorModes := (Array new: 4 withAll: 0)
