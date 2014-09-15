as yet unclassified
openProjectFromFile
	"Reconstitute a Morph from the selected file, presumed to be represent
	a Morph saved via the SmartRefStream mechanism, and open it in an
	appropriate Morphic world."
	(fileName endsWith: '.pe')
		ifTrue: [PEProject
			openProjectNamed: fileName
			on: currentDirectorySelected withoutListWrapper]
		ifFalse: [ProjectViewMorph 
			openFromDirectory: directory 
			andFileName: fileName]