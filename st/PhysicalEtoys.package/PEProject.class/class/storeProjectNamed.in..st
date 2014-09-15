reading/writing
storeProjectNamed: projectName in: directory
	"Don't call this for saving a project, instead send:
		
		project storeOnServerAsPE
	"
	ZipArchive new 
		addFile: (directory fullNameFor: projectName) as: projectName;
		writeToFileNamed: (directory fullNameFor: (projectName allButLast: 2), 
							self peProjectExtension);
		close.
	directory deleteFileNamed: projectName ifAbsent:[]