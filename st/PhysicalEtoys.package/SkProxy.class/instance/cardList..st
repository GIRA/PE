accessing
cardList: aRectangle 
	^ self cardPositions
		select: [:key | (self at: key) isSkObject]
		thenCollect: [:key | key
				-> (self at: key)]