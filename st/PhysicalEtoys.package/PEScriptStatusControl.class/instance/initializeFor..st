as yet unclassified
initializeFor: aScriptInstantiation
	"Answer a control that will serve to reflect and allow the user to change the status of the receiver"

	|  statusReadout |
	aScriptInstantiation player isUsingCompiledMode ifFalse: [^super initializeFor: aScriptInstantiation].
	self hResizing: #shrinkWrap.
	self vResizing: #shrinkWrap.
	self cellInset: 0@0.
	self layoutInset: 0.
	scriptInstantiation _ aScriptInstantiation.
	tickPauseButtonsShowing _ false.

	self addMorphBack: (statusReadout _ UpdatingSimpleButtonMorph new).
	statusReadout label: 'Richo capo' font: ScriptingSystem fontForEToyButtons.
	statusReadout setNameTo: 'trigger'.
	statusReadout height: statusReadout height - 4.
	statusReadout vResizing: #rigid.

	"statusReadout target: aScriptInstantiation; wordingSelector: #translatedStatus; actionSelector: #yourself.
	statusReadout setBalloonText: 'when this script should run' translated."
	statusReadout actWhen: #buttonDown; target: aScriptInstantiation; actionSelector: #presentTickingMenu.

	self assurePauseTickControlsShow.
	aScriptInstantiation updateStatusMorph: self