finding libraries
findLibrariesFromSketch
	"Finds the libraries necessary to compile the sketch and copies them inside the sketch directory.
	It looks in the sketch includes"
	sketch allIncludes do: [:incl | 
		self copyLibraryFilesFrom: (self findLibrary: incl)]