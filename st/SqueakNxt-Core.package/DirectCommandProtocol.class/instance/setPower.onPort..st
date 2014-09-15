motor actions
setPower: powerNumber onPort: portNumber 
	self controlConnection.
	self dcSetOutputStatePort: portNumber - 1
		power: powerNumber
		mode: Mode regulated + Mode motorOn
		regulation: RegulationMode regulationModeMotorSpeed
		turnRatio: 0
		runState: RunState motorRunStateRunning
		tachoLimit: 0