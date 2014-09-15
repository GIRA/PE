adafruit motorshield
runMotor: numMotor command: cmd speed: speed 
	| cmdCode t5 |
	cmd = #Stop
		ifTrue: [cmdCode := 3].
	cmd = #Backward
		ifTrue: [cmdCode := 2].
	cmd = #Forward
		ifTrue: [cmdCode := 1].
	t5 := ByteArray new: 6.
	t5 at: 1 put: FirmataConstants startSysex;
		 at: 2 put: FirmataConstants shiftData;
		 at: 3 put: numMotor;
		 at: 4 put: cmdCode;
		 at: 5 put: (speed * 2.5) rounded;
		 at: 6 put: FirmataConstants endSysex.
	self port nextPutAll: t5