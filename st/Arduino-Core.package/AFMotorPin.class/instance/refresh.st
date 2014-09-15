initializing
refresh
	state = #Running
		ifTrue: [previousState := #Running.
			self protocol
				runMotor: number
				command: direction
				speed: speed]
		ifFalse: [previousState = #Running
				ifTrue: [previousState = #Stopped.
					self protocol runMotor: number command: #Stop]]
