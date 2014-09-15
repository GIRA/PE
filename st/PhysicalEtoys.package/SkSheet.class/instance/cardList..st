accessing
cardList: aRectangle 
	^ self cardPositions
		collect: [:key | key
				-> (self at: key)]