connection
disconnect
	"Takes care of stopping motors and sensors"
	self controlConnection;
		stopAllMotors;
		stopAllSensors;
		privateDisconnect
	