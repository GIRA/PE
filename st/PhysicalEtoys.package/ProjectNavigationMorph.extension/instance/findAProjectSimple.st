*physicaletoys
findAProjectSimple
	(Project current isPEProject
		ifTrue: [PEFileList]
		ifFalse: [FileList2])
			morphicViewProjectLoader2InWorld: self world 
			reallyLoad: true
			dirFilterType: #limitedSuperSwikiDirectoryList