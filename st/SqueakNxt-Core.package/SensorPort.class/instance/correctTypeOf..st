sensor actions
correctTypeOf: aNxtSensor 
	[nxt protocol correctTypeOf: aNxtSensor onPort: portNumber]
		on: NotConnectedLego do: ["Nothing"]