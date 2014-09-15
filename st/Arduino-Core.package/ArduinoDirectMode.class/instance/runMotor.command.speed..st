adafruit motor shield
runMotor: numMotor command: cmd speed: speed 
	| cmdCode  actualSpeed |
	cmd = #Stop
		ifTrue: [cmdCode := 3].
	cmd = #Backward
		ifTrue: [cmdCode := 2].
	cmd = #Forward
		ifTrue: [cmdCode := 1].
	actualSpeed := (speed * 2.5) rounded.
	self send: {self asCommand: self class rqAFDCMotor.
				self asArgument: numMotor.
				self asArgument: cmdCode.
				self asArgument: (actualSpeed bitAnd: 2r01111111).
				self asArgument: (actualSpeed bitAnd: 2r10000000) >> 7} asByteArray.