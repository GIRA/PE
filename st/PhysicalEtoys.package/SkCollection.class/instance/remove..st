accessing
remove: value 
	map
		removeAllSuchThat: [:each | each = value].
	self changed: #cardList.
	^ value