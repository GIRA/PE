*PhysicalEtoys-skeleton-base-sheet
direction2: freePoint distance: distance 
	"Ask Point by extention of self - freePoint with distance.  
	(100@100 direction: 400@100 distance: 100) =  
	(200@100)"
	"IT SHOULD BE REMOVED!!! use #direction:distance:"
	self flag: #TODO.
	^ self = freePoint
		ifTrue: [self]
		ifFalse: [self + (freePoint - self * distance / (freePoint - self) r)]