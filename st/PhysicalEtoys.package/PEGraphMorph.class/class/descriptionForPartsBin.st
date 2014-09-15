parts bin
descriptionForPartsBin
	"Answer a description for use in parts bins"

	^ self partName: 	'Graph' translatedNoop
		categories:		(Project current isPEProject
								ifTrue: [{'Physical Etoys' translatedNoop}]
								ifFalse: [#()])
		documentation:	'A graph that draws the input from a variable' translatedNoop