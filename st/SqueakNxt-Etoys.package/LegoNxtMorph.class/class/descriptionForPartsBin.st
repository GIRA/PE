as yet unclassified
descriptionForPartsBin
	"Answer a description for use in parts bins"
	^ self
		partName: 'Nxt Brick' translatedNoop
		categories: (Project current isPEProject
						ifTrue: [{'Physical Etoys' translatedNoop}]
						ifFalse: [#()])
		documentation: 'An object that you can use to communicate with a Lego Mindstorms Nxt' translatedNoop