initializing
initialize
	motorPorts := Array new: 3.
	1
		to: motorPorts size
		do: [:i | motorPorts
				at: i
				put: (MotorPort on: self portNumber: i)].
	sensorPorts := Array new: 4.
	1
		to: sensorPorts size
		do: [:i | sensorPorts
				at: i
				put: (SensorPort on: self portNumber: i)].
	protocol := DirectCommandProtocol new