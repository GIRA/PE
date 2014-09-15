sensor actions
getSensorRawValueOnPort: aNumber 
	self controlConnection.
	^ rawValues at: aNumber