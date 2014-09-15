accessing
directCommandFor: byte
	^ #(#getOutputState #startProgram #lsRead #lsGetStatus #playTone #messageRead #messageWrite #stopProgram #getCurrentProgramName #getInputValues #keepAlive #resetMotorPosition #setInputMode #resetInputScaledValue #getBatteryLevel   #setOutputState #lsWrite #playSoundFile #stopSoundPlayback)
		detect: [:each | (self perform: each) = byte]