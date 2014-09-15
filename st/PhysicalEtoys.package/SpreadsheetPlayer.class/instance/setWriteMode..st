file i/o
setWriteMode: aSymbol
| morph |
morph := self costume renderedMorph.
aSymbol caseOf: {
	[#overwrite] -> [morph setOverwrite].
	[#append] -> [morph setAppend]
} otherwise: [].