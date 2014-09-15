initializing
collectMorphs
	"Finds out which device morphs are connected to the arduino in which pins (digital or analog).
	It's not the cleanest way of doing it but it works..."
	| arduino |
	super collectMorphs.
	arduino := mainMorph arduino.
	digitalPins := ((2 to: 13)
		collect: [:n | n -> OrderedCollection new]) as: Dictionary.
	analogPins := ((0 to: 5)
		collect: [:n | n -> OrderedCollection new]) as: Dictionary.
	World allMorphsDo: [:morph |
		"Devices"
		((morph isKindOf: AttachableDeviceMorph)
		and: [morph isAttachedTo: mainMorph])
			ifTrue: [
				arduino digitalPins do: [:pin |
					(morph device isAttachedToPin: pin)
						ifTrue: [(digitalPins at: pin number) add: morph]
				].
				arduino analogPins do: [:pin |
					(morph device isAttachedToPin: pin)
						ifTrue: [(analogPins at: pin number) add: morph]
				]
		].		
	]