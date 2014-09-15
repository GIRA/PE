*PhysicalEtoys-skeleton-data i/o
exportDataToFile
	[self saveCSVFile: self csvFileName separator: self csvSeparator]
		on: Error do: [:err| ^ self inform: err description]