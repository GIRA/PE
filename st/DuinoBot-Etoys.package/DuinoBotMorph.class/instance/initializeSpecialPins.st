initialize
initializeSpecialPins
	"Sensors"
	 {164@293. 197@293. 230@293. 263@293. 296@293. 329@293}
		doWithIndex: [:distToOrigin :index | | x morph |
			self addMorph: ((DuinoBotSensorPinMorph on: (arduino analogPin: index - 1))
						position: self position + distToOrigin)].
	"Motors"
	{354@227.  354@192}
		doWithIndex: [:distToOrigin :index | | x morph |
			self addMorph: ((DuinoBotMotorPinMorph on: (arduino motorPin: index - 1))
						position: self position + distToOrigin)
		].