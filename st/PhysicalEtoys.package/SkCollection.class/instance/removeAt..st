cell accessing
removeAt: key 
	(self isApplicableKey: key)
		ifFalse: [^ NullCell].
	map removeAt: key y - 1.
	self changed: #cardList.
	^ NullCell