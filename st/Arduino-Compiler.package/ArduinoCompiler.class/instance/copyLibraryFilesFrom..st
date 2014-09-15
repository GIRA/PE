finding libraries
copyLibraryFilesFrom: dir
	"All the files from the library directory must be copied to the sketch directory in order for the makefile to work. I know this could be done by tweaking the makefile but I don't like dealing with that stuff"
	dir fileNames do: [:fileName |
		dir fileNamed: fileName do: [:file1 |
			file1 binary.
			self sketchDirectory forceNewFileNamed: fileName do: [:file2 |
				file2 binary.
				self sketchDirectory copyFile: file1 toFile: file2]]]