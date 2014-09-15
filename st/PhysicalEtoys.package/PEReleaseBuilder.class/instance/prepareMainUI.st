private
prepareMainUI
	"Change display mode to 'scaled to fit'"
	 OLPCVirtualScreen install.
	"Delete all system windows"
	World submorphsDo: [:morph |
		"(morph isFlapTab and: [morph isGlobalFlap])
			ifFalse: [morph delete]"
		morph isSystemWindow ifTrue: [morph delete]].
	"Create the PE Supplies flap"
	PESupplies makeFlap
