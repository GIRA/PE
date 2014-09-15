as yet unclassified
limitedSuperSwikiDirectoryListOld
	| dirList |
	dirList _ (FileDirectory on: '') directoryNames collect: [ :each |
		FileDirectoryWrapper with: (FileDirectory on: each) name: each model: self].
	dirList isEmpty ifTrue:[
		dirList _ Array with: (FileDirectoryWrapper 
			with: FileDirectory default 
			name: FileDirectory default localName 
			model: self)].
	dirList do: [:e | e balloonText: e withoutListWrapper pathName].
	^dirList