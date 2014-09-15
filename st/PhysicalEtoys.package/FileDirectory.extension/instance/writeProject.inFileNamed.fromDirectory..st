*physicaletoys
writeProject: aProject inFileNamed: fileNameString fromDirectory: localDirectory 
	"write aProject (a file version can be found in the file named fileNameString in localDirectory)"
	"Richo: Added the #assureExistence here to avoid a dnu when trying to save a project in a non-existent directory. This doesn't happen in etoys, I assume, because the installer creates the untrusted user directory ('etoys') automatically, but since Physical Etoys doesn't have an installer, this directory might not exist"
	self assureExistence.
	aProject
		writeFileNamed: fileNameString
		fromDirectory: localDirectory
		toServer: self