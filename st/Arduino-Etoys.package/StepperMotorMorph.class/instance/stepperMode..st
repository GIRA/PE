slots
stepperMode: aSymbol
stepperMode := aSymbol.
aSymbol caseOf: {
	[#normal] -> [device setNormalMode].
	[#halfStep] -> [device setHalfStepMode].
	[#waveDrive] -> [device setWaveDriveMode]
} otherwise: [device setNormalMode]
