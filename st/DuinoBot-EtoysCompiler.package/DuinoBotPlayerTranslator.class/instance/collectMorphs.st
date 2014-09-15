initializing
collectMorphs
	"Apart from digital and analog pins we also need to check the motor pins"
	| arduino |
	super collectMorphs.
	arduino := mainMorph arduino.
	motorPins := ((0 to: 1)
		collect: [:n | n -> OrderedCollection new]) as: Dictionary.
	World allMorphsDo: [:morph |
		((morph isKindOf: AttachableDeviceMorph)
		and: [morph isAttachedTo: mainMorph])
			ifTrue: [
				arduino motorPins do: [:pin |
					(morph device isAttachedToPin: pin)
						ifTrue: [(motorPins at: pin number) add: morph]
				]
		]
	]