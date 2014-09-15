accessing
pinModeFromSymbol: aSymbol
^aSymbol caseOf: {
	[#output] -> [OutputMode new].
	[#input] -> [InputMode new].
	}
