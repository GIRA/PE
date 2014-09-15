motor actions
resetMotorOnPort: portNumber relative: aBoolean 
	self controlConnection;
		dcResetMotorPositionPort: portNumber - 1 relative: aBoolean