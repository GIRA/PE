*physicaletoys
copyContentsTo: dir
	"First make sure the directory exists"
	dir assureExistence.
	"Then copy all files"
	self fileNames do: [:fileName |
		self fileNamed: fileName do: [:file1 |
			file1 binary.
			dir forceNewFileNamed: fileName do: [:file2 |
				file2 binary.
				dir copyFile: file1 toFile: file2]]].
	"Finally, recursively copy all subdirectories"
	self directoryNames do: [:dirName |
		(self directoryNamed: dirName)
			copyContentsTo: (dir directoryNamed: dirName)]