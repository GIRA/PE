*squeaknxt-etoyscompiler
newScriptorAround: aPhrase
	| scriptEditor |
	Transcript show: 'newScriptorAround:'; cr.
	^ scriptEditor := super newScriptorAround: aPhrase.
	"^ NxtScriptEditorMorph fromScriptEditor: scriptEditor phrase: aPhrase"