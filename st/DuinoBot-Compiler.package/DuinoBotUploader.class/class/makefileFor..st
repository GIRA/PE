as yet unclassified
makefileFor: duinoBotType
	^ duinoBotType isHID ifTrue: [self makefileHID] ifFalse: [self makefileCDC]