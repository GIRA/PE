sensor actions
getSensorNormalizedValueOnPort: aNumber 
	self controlConnection.
	^ normalizedValues at: aNumber