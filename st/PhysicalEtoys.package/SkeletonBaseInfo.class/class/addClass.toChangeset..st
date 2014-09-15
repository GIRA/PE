fileIn/Out
addClass: aClass toChangeset: aChangeSet 
	aChangeSet addClass: aClass.
	aChangeSet commentClass: aClass.
	aClass selectors
		do: [:aSymbol | aChangeSet adoptSelector: aSymbol forClass: aClass].
	aClass class selectors
		do: [:aSymbol | aChangeSet adoptSelector: aSymbol forClass: aClass class].
	^ aChangeSet