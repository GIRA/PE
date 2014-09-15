sensor actions
getSensorScaledValueOnPort: aNumber 
	self controlConnection.
	^ scaledValues at: aNumber