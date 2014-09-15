makefile creation
createMakefileOn: directory for: arduinoType
	"The Makefile *must* have lf as line ending"
	| makefile |
	makefile := self class makefileFor: arduinoType.
	directory forceNewFileNamed: 'Makefile' do: [:file |
		file nextPutAll: (makefile copyReplaceAll: String cr with: String lf)]