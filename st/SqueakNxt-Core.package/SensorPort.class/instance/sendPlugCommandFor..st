plugging
sendPlugCommandFor: aNxtSensor 
	[nxt protocol plugSensor: aNxtSensor onPort: portNumber]
		on: NotConnectedLego do: ["Nothing"]