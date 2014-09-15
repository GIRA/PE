plugging
sendUnplugCommand
	[nxt protocol unplugSensorOnPort: portNumber]
		on: NotConnectedLego do: ["Nothing"]