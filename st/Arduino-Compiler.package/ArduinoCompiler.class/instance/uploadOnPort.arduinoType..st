uploading
uploadOnPort: portName arduinoType: arduinoType 
	self compileFor: arduinoType.
	^ self uploadOnPort: portName arduinoType: arduinoType clean: false