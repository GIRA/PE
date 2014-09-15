cleaning
deleteQuickGuides
	"
	This method will remove all the QuickGuides installed in the locale directory.
	Since the Quickguides won't be used by Physical Etoys, this will save disk space.
	"
	| locale |
	self includesEtoys ifTrue: [^ self].
	locale := FileDirectory default directoryNamed: 'locale'.
	locale directoryNames do: [:d1 | | country |
		country := locale directoryNamed: d1.
		(country directoryExists: 'QuickGuides')
				ifTrue: [(country directoryNamed: 'QuickGuides') deleteLocalFiles.
					country deleteDirectory: 'QuickGuides']]