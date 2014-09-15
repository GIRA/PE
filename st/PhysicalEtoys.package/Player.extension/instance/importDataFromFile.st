*PhysicalEtoys-skeleton-data i/o
importDataFromFile
[[self openCSVFile: self csvFileName separator: self csvSeparator] 
	on: FileDoesNotExistException do: [:err | self inform: 'The file doesn''t exist.' translated]]
	on: Error do: [:err | self inform: 'An error occurred. Please check if the file''s format is CSV.' translated].