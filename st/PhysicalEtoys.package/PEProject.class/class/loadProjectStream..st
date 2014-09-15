reading/writing
loadProjectStream: stream
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
				ProjectLoading
					loadName: nil
					stream: (tempDir fileNamed: actualProject)
					fromDirectory: nil
					withProjectView: nil]]