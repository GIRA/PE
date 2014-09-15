*physicaletoys-compilersupport
updateStatusMorph: statusControlMorph
	"the status control may need to reflect an externally-induced change in status"

	| colorSelector statusReadoutButton |
	statusControlMorph ifNil: [^ self].
	self pausedOrTicking
		ifTrue:
			[statusControlMorph assurePauseTickControlsShow]
		ifFalse:
			[statusControlMorph maybeRemovePauseTickControls].
	self player isUsingCompiledMode
		ifTrue: [""
			(statusControlMorph isKindOf: PEScriptStatusControl)
				ifFalse: ["The player is using compiled mode but this script editor
						was not updated somehow"
					self player updateScriptEditors.
					^ self].
			statusReadoutButton _ statusControlMorph submorphs last.
			colorSelector _ #green.
			statusReadoutButton color: (Color perform: colorSelector) muchLighter.
			statusReadoutButton label: ('{1} ticks / sec' format: {self tickingRate}) font: ScriptingSystem fontForEToyButtons.
		^self].
	statusReadoutButton _ statusControlMorph submorphs last.
	colorSelector _ ScriptingSystem statusColorSymbolFor: self status.
	statusReadoutButton color: (Color perform: colorSelector) muchLighter.
	statusReadoutButton label: self translatedStatus asString font: ScriptingSystem fontForEToyButtons