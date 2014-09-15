as yet unclassified
limitedSuperSwikiDirectoryList

	| dirList localDirName localDir localList |

	dirList _ OrderedCollection new.
	localList _ OrderedCollection new.
	"ServerDirectory serverNames do: [ :n | 
		dir _ ServerDirectory serverNamed: n.
		dir isProjectSwiki ifTrue: [
			nameToShow _ n.
			dirList add: ((dir directoryWrapperClass with: dir name: nameToShow model: self)
				balloonText: dir realUrl)
		].
	]."
	ServerDirectory localProjectDirectories do: [ :each |
		localList add: (dirList add: (FileDirectoryWrapper with: each name: each localName model: self))
	].
	(dirList anySatisfy: [:e | e withoutListWrapper pathName beginsWith: 'sugar://']) ifFalse: [
		"Make sure the following are always shown, but not twice"
		localDirName := SecurityManager default untrustedUserDirectory.
		localDir := FileDirectory on: localDirName.
		((ServerDirectory localProjectDirectories collect: [:each | each pathName]) includes: localDirName)
				ifFalse: [localList add: (dirList add: (FileDirectoryWrapper with: localDir name: localDir localName model: self))].
		FileDirectory default pathName = localDirName
				ifFalse: [localList add: (dirList add: (FileDirectoryWrapper with: FileDirectory default name: FileDirectory default localName model: self))].
		(dirList anySatisfy: [:each | each withoutListWrapper acceptsUploads])
			ifFalse: [localList add: (dirList add: (FileDirectoryWrapper with: FileDirectory default name: FileDirectory default localName model: self))].
	].
	localList do: [:e | e balloonText: e withoutListWrapper pathName].
	^dirList