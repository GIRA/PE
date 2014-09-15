*physicaletoys-compilersupport
statusControlMorph
	"Answer a control that will serve to reflect (and allow the user to change) the status of the receiver"
	self player isUsingCompiledMode 
		ifTrue: [^ PEScriptStatusControl new initializeFor: self]
		ifFalse: [^ ScriptStatusControl new initializeFor: self]
