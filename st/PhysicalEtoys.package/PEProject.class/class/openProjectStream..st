reading/writing
openProjectStream: stream
	FileDirectory default temporaryDirectoryDo: [:tempDir || archive |
		archive := ZipArchive new.
		[archive
			readFrom: stream;
			extractAllTo: tempDir]
				ensure: [archive close.
						stream close].
		(archive memberNames
			detect: [:each | each endsWith: '.pr'] ifNone: [nil])
			ifNotNil: [:actualProject |
				ProjectLoading openOn: (tempDir fileNamed: actualProject)]]