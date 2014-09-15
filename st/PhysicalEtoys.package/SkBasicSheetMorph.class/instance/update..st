updating
update: anObject 
	anObject = #cardList
		ifTrue: [self updateCardList].
	anObject = #all
		ifTrue: [self updateCardList].
	self changed