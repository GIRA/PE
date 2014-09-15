*duinobot-etoyscompiler
updateScriptEditors
	"Horrible hack below"
	World allMorphsDo: [:morph | | viewer |
		"Update scripts category of all opened viewers"
		((morph isKindOf: StandardViewer)
		and: [morph playerScripted isKindOf: self class officialClass orOf: ArduinoPlayer]) 
			ifTrue: [morph updateScriptsCategory].
		"Also update closed viewers"
		((morph isKindOf: ViewerFlapTab) and: [(viewer := morph referent findA: StandardViewer) notNil])
			ifTrue: [viewer updateScriptsCategory].
		"Finally, update all opened script editors"
		((morph isKindOf: ScriptEditorMorph)
		and: [morph playerScripted isKindOf: self class officialClass orOf: ArduinoPlayer]) 
			ifTrue: [morph replaceRow1; minWidth: nil]]