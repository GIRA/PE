finding libraries
findLibrariesFromSource: aFileStream
	"Parses the file contents looking for #include statements. It then tries to find and copy the results to the sketch directory. If the library is not found it does nothing because the include might be in the arduino core (which is handled correctly by the Makefile)"
	aFileStream contents
		regex: '#include[[:space:]]+["<][[:print:]]+[">]'
		matchesDo: [:match |
			match 
				regex: '["<][[:print:]]+[">]'
				matchesDo: [:include |
					[self copyLibraryFilesFrom: (self findLibrary: include)]
						on: Error do: ["Nothing"]]].



