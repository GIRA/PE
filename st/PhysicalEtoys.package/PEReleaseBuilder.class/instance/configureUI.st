releasing
configureUI
	| peRoot |
	"Change display mode to 'scaled to fit'"
	OLPCVirtualScreen install.
	"Load projects"
	self projects
		do: [:projectName | self loadProjectNamed: projectName].
	"Set PE root"
	peRoot := Project named: self peRootName.
	peRoot makePERoot.
	"Make all PE projects be PE root chids"
	self projects do: [:projectName || fileName |
		fileName := self fileNameForProjectNamed: projectName.
		(projectName ~= self peRootName
			and: [fileName endsWith: '.pe'])
				ifTrue: [(Project named: projectName) setParent: peRoot]]