sensor actions
getSensorUltrasonicValueOnPort: aNumber 
	self controlConnection.
	^ lsRxData at: aNumber