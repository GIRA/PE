cleaning
cleanUpTranslations
	"Removes the .strings file for the packages that are not installed in this release"
	| locale |
	locale := FileDirectory default directoryNamed: 'locale'.
	locale directoryNames do: [:d1 | | country |
		country := locale directoryNamed: d1.
		country fileNames do: [:fileName |
			(fileName endsWith: '.strings')
				ifTrue: [(PhysicalEtoys packages includes: (fileName allButLast: 8))
					ifFalse: [country deleteFileNamed: fileName]]]]