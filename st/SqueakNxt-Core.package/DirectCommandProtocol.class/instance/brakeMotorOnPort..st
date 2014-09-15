motor actions
brakeMotorOnPort: aNumber 
	self controlConnection.
	self dcSetOutputStatePort: aNumber - 1
		power: 0
		mode: Mode brake + Mode motorOn
		regulation: RegulationMode regulationModeMotorSpeed
		turnRatio: 0
		runState: RunState motorRunStateRunning
		tachoLimit: 0