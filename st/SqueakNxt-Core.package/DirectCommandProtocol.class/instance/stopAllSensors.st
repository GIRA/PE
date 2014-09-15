initialize-release
stopAllSensors
	[1
		to: 4
		do: [:i | self unplugSensorOnPort: i]]
		on: NotConnectedLego do: ["Nothing"]