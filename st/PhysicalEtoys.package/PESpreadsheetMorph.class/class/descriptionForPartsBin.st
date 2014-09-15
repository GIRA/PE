parts bin
descriptionForPartsBin
	"Answer a description for use in parts bins"

	^ self partName: 	'Spreadsheet' translatedNoop
		categories:		(Project current isPEProject
								ifTrue: [{'Physical Etoys' translatedNoop}]
								ifFalse: [#()])
		documentation:	'A spreadsheet that allows you to read/write csv files' translatedNoop