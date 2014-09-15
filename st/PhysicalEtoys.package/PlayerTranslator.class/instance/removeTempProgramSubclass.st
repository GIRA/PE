compiling
removeTempProgramSubclass
	"Before translating we silently remove the temporary class, so that no garbage
	is left from a previous program"
	SystemChangeNotifier uniqueInstance doSilently: [
		self programClass ifNotNilDo: [:class | class removeFromSystem]]
