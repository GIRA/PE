accessing
rowAt: aNumber 
	^ (1 < aNumber
			and: [aNumber <= (orderedCache size + 1)])
		ifTrue: [orderedCache at: aNumber - 1]