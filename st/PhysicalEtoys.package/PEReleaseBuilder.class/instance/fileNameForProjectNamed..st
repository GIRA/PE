utils
fileNameForProjectNamed: projectName
	"Looks for the file corresponding to this project name in the
	projects directory and returns its name or nil if no file matching
	was found"
	^ self projectsDirectory fileNames
		detect: [:each |
			(Project parseProjectFileName: each) first 
				= projectName]
		ifNone: ["File not found" nil].