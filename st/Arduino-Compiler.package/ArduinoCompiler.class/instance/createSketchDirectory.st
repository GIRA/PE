initializing
createSketchDirectory
	(self allSketchesDirectory directoryExists: sketch name)
		ifFalse: [self allSketchesDirectory createDirectory: sketch name].
	