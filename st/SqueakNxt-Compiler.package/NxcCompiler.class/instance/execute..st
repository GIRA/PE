private
execute: nbc 
	"Create the temporary files to store the source code and the errors.
	Execute nbc.
	Wait until nbc finishes.
	Parse errors.
	Delete temporary files.
	Return errors"
	source isNil ifTrue: [^ self error: 'Source cannot be nil'].
	FileStream forceNewFileNamed: self programFileName do: [:file | file nextPutAll: source]; 
				forceNewFileNamed: self errorsFileName do: [:file | "Do nothing. Nbc will write this file"].
	[nbc fileName: self programFileName;
		 errorsFile: self errorsFileName;
		 optimizationLevel: 2;
		 execute.
	self waitUntilNbcFinishes.
	^ self parseErrors]
		ensure: [FileDirectory default deleteFileNamed: self programFileName;
				 deleteFileNamed: self errorsFileName]