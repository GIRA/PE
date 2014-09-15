connection
connectOnHIDPort: aString
	port := HIDPort new.
	port := port 	openPort: aString