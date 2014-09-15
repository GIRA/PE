private
deleteAllFilesExtracted
	self files do: [:path | 
		self defaultDirectory
			deleteFileNamed: path
			ifAbsent: ["It was deleted already. Do nothing"]].