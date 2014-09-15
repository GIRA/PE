fileIn/Out
makeChangeSetForThisPackage
	"This is for building .pr file"
	"self makeChangeSetForThisPackage"
	| aChangeSet package |
	aChangeSet _ ChangeSet current.
	package _ self default.
	package classes
		do: [:aClass | self addClass: aClass toChangeset: aChangeSet].
	package extensionMethods
		do: [:method | aChangeSet adoptSelector: method methodSymbol forClass: method actualClass].
	aChangeSet postscriptString: self default postscriptText.
	^ aChangeSet