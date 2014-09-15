initialize-release
stopAllMotors
	[1
		to: 3
		do: [:i | self floatMotorOnPort: i;
					unplugMotorOnPort: i]]
		on: NotConnectedLego do: ["Nothing"]