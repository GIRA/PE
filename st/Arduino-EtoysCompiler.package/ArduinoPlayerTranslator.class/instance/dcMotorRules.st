accessing-rules
dcMotorRules
	| selfVar |
	selfVar := self variable: 'self'.
	^ {
		#getSpeed -> [:node | 
			self withCurrentMorph: (self morphFor: node receiver name)
				do: [| device |
				device := currentMorph device.
				node arguments: {self literal: device d0Pin number.
						self literal: device d1Pin number.
						self literal: device enablePin number};
					selector: #getDCMotorSpeedD0:d1:en:;
					receiver: selfVar].
			super acceptMessageNode: node].
		#setSpeed: -> [:node | 	
			self withCurrentMorph: (self morphFor: node receiver name)
				do: [| device |
				device := currentMorph device.
				node arguments: node arguments,
						{self literal: device d0Pin number.
						self literal: device d1Pin number.
						self literal: device enablePin number};
					selector: #setDCMotorSpeed:d0:d1:en:;
					receiver: selfVar].
			super acceptMessageNode: node].
		}