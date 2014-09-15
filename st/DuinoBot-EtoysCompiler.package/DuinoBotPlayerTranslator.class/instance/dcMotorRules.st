accessing-rules
dcMotorRules
	| selfVar superRules |
	superRules := super dcMotorRules as: Dictionary.
	selfVar := self variable: 'self'.
	^ {
		"RGMotorMorph"
		#getSpeed -> [:node || morph | 
			morph := self morphFor: node receiver name.
			(morph isKindOf: RGMotorMorph)
				ifTrue: [self withCurrentMorph: morph
						do: [| device |
						device := currentMorph device.
						node arguments: {self literal: device motorID};
							selector: #getRGMotorSpeed:;
							receiver: selfVar].
					super acceptMessageNode: node]
				ifFalse: [(superRules at: #getSpeed) value: node]
			].
		#setSpeed: -> [:node || morph | 
			morph := self morphFor: node receiver name.
			(morph isKindOf: RGMotorMorph)
				ifTrue: [self withCurrentMorph: morph
						do: [| device |
						device := currentMorph device.
						node arguments: node arguments, 
								{self literal: device motorID};
							selector: #setRGMotorSpeed:motorID:;
							receiver: selfVar].
					super acceptMessageNode: node]
				ifFalse: [(superRules at: #setSpeed:) value: node]].
		"DuinoBotMorph"
		#getMotor0 -> [:node || morph | 
			morph := self morphFor: node receiver name.
			self withCurrentMorph: morph
						do: [
						node arguments: {self literal: 0};
							selector: #getRGMotorSpeed:;
							receiver: selfVar].
					super acceptMessageNode: node].
		#setMotor0: -> [:node || morph | 
			morph := self morphFor: node receiver name.
			self withCurrentMorph: morph
						do: [
						node arguments: node arguments, 
								{self literal: 0};
							selector: #setRGMotorSpeed:motorID:;
							receiver: selfVar].
					super acceptMessageNode: node].
		#getMotor1 -> [:node || morph | 
			morph := self morphFor: node receiver name.
			self withCurrentMorph: morph
						do: [
						node arguments: {self literal: 1};
							selector: #getRGMotorSpeed:;
							receiver: selfVar].
					super acceptMessageNode: node].
		#setMotor1: -> [:node || morph | 
			morph := self morphFor: node receiver name.
			self withCurrentMorph: morph
						do: [
						node arguments: node arguments, 
								{self literal: 1};
							selector: #setRGMotorSpeed:motorID:;
							receiver: selfVar].
					super acceptMessageNode: node].
		}