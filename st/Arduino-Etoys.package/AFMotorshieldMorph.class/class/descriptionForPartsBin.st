as yet unclassified
descriptionForPartsBin
	^ self
		partName: 'Arduino with Adafruit Motorshield' translatedNoop
		categories: (Project current isPEProject
						ifTrue: [{'Physical Etoys' translatedNoop}]
						ifFalse: [#()])
		documentation: 'An arduino with the Adafruit MotorShield' translatedNoop
