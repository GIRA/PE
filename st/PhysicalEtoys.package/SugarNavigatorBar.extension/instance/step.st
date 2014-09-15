*physicaletoys
step
	self checkSugarButtons.
	self checkForResize.
	self undoButtonAppearance.
	self stopButtonAppearance.
	"Hide or show PESupplies depending on the current project"
	Project current isPEProject
		ifTrue: [(Flaps globalFlapTab: 'Physical Etoys')
			ifNil: [PESupplies makeFlap]]
		ifFalse: [Flaps removeFlapTab: (Flaps globalFlapTab: 'Physical Etoys') keepInList: false.
			self currentWorld reformulateUpdatingMenus]