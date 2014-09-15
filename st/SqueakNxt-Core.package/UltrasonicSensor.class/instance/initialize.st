initialize
initialize
	"When wanting to use the ultrasonic sensor, the sensor type should be
	set to LowSpeed_9V (the ultrasonic sensors is a digital sensor which
	need Lowspeed(I2C) communication and it also needs 9V. Sensor mode is
	not used when a digital sensor is used therefore this can be set to 0. If
	you want to use the ultrasonic sensor using direct command you first
	need to setup the sensor type correctly and the make a LSWRITE
	command and thereafter waiting for the communication to finish using
	the LSGETSTATUS and then finally make a LSREAD command."
	type := SensorType lowspeed9V.
	mode := SensorMode rawmode