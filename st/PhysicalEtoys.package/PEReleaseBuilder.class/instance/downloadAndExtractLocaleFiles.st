releasing
downloadAndExtractLocaleFiles
	| doc zip |
	Utilities informUserDuring:[:bar| 
		bar value: 'Downloading localization files'.
		doc := HTTPClient httpGet: self findLatestLocale].
	(ZipArchive isZipArchive: doc)
		ifFalse: [^ self error: 'Not a zip file'].
	zip := ZipArchive new readFrom: doc.
	zip extractAllTo: FileDirectory default