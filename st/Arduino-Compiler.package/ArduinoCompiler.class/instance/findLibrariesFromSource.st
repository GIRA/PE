finding libraries
findLibrariesFromSource
	"Finds the libraries necessary to compile the sketch and copies them inside the sketch directory.
	It looks in the source files, and keeps looking until no file is added"
	| sourceFiles |
	[(sourceFiles := self sketchSourceFileNames)
		do: [:fileName |
			self sketchDirectory
				fileNamed: fileName
				do: [:file | self findLibrariesFromSource: file]]]
		doWhileTrue: [sourceFiles size ~= self sketchSourceFileNames size]
	