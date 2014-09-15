motor actions
getMotorValuesOnPort: aNumber 
	self controlConnection.
	^ self dcGetOutputStatePort: aNumber - 1