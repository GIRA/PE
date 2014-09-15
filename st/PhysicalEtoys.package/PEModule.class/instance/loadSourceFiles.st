private
loadSourceFiles
	(zip memberNames
		select: [:entryName |
			self validSourceTypes includes: (FileDirectory extensionFor: entryName)])
		asSortedCollection
		do: [:entryName | self loadSourceFile: entryName]