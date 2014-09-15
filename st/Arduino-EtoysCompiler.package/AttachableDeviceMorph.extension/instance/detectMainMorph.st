*arduino-etoyscompiler
detectMainMorph
	"Looks for the arduino board in which it is connected and returns it"
	World allMorphsDo: [:morph |
		((morph isKindOf: ArduinoMorph) and: [self isAttachedTo: morph])
			ifTrue: [^ morph]
		].
	^ self error: 'The device is not properly attached to any arduino'