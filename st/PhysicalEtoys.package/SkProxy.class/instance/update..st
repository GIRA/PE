updating
update: anObject 
	anObject == #cardList
		ifTrue: [self updateCardList].
	self changed: anObject