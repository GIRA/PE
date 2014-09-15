accessing
cardPositions
	^ (map keys
		select: [:each | each class = Point
				and: [(map at: each) hasCard]]) addAll: rule cardPositions;
		 yourself