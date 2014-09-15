parts bin
descriptionForPartsBin
	"Answer a description for use in parts bins"
	^ self
		partName: 'Timer' translatedNoop
		categories: (Project current isPEProject
						ifTrue: [{'Physical Etoys' translatedNoop}]
						ifFalse: [#()])
		documentation: 'A timer that lets you specify an action to be executed in the future' translatedNoop