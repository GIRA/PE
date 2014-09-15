initialize-release
initializeSubmorphs
	self
		addMorphBack: (MotorsBarMorph on: self);
		addMorphBack: (controlPanel := (ControlPanelMorph on: self));
		addMorphBack: (SensorsBarMorph on: self)