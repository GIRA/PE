file i/o
importDataFromFile
[[self costume renderedMorph openCSVFile: fileName separator: separator] 
	on: FileDoesNotExistException do: [:err | self inform: 'The file doesn''t exist.']]
	on: Error do: [:err | self inform: 'An error occurred. Please check if the file''s format is CSV.'].