initialize-release
initializeWith: aLocaleID
	| parser dir |
	self initialize.
	translations := Dictionary new.
	parser := Smalltalk at: #CSVParser ifAbsent: [^ self].
	dir := self class directoryForLocaleID: aLocaleID.
	dir fileNames asSortedCollection do: [:fileName |
		('*.strings' match: fileName)
			ifTrue: [dir 
				fileNamed: fileName
				do: [:file |(parser parse: file delimiter: $;)
					do: [:row | translations at: row first put: row second]]]]