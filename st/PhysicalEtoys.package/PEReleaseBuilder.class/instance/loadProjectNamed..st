utils
loadProjectNamed: projectName
	| dir fileName |
	dir := self projectsDirectory.
	(fileName := self fileNameForProjectNamed: projectName)
		ifNil: [^ self].
	(fileName last: 3) caseOf: {
		['.pe'] -> [PEProject
					loadProjectNamed: fileName
					on: dir].
		['.pr'] -> [ProjectLoading
					loadName: nil
					stream: (dir fileNamed: fileName)
					fromDirectory: nil
					withProjectView: nil]
	} otherwise: ["Do nothing"]