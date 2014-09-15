parts bin
descriptionForPartsBin
	"Answer a description for use in parts bins"
	^ self
		partName: 'Arduino board' translatedNoop
		categories: (Project current isPEProject
						ifTrue: [{'Physical Etoys' translatedNoop}]
						ifFalse: [#()])
		documentation: 'An object that lets you communicate with an arduino board' translatedNoop