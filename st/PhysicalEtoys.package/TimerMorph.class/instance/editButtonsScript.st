halo button
editButtonsScript
	"The user has touched my Scriptor halo-handle.  Bring up a Scriptor on the script of the button."

	| player anEditor |
	player := self assuredPlayer.
	anEditor := scriptSelector ifNil: 
					[scriptSelector := player acceptableScriptNameFrom: #action forScriptCurrentlyNamed: nil.
					player newTextualScriptorFor: scriptSelector.
					player scriptEditorFor: scriptSelector
					]
				ifNotNil: 
					[(player class selectors includes: scriptSelector) 
						ifTrue: [player scriptEditorFor: scriptSelector]
						ifFalse: 
							["Method somehow got removed; I guess we start afresh"

							scriptSelector := nil.
							^self editButtonsScript]].
	anEditor showingMethodPane ifTrue: [anEditor toggleWhetherShowingTiles].
	self currentHand attachMorph: anEditor