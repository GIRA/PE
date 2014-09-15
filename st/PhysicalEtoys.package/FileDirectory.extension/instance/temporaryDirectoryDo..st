*physicaletoys
temporaryDirectoryDo: aBlock
	| tempDir |
	tempDir := self createTemporaryDirectory.
	[aBlock value: tempDir]
		ensure: [tempDir recursiveDelete]