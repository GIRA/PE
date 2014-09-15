accessing
visibleArea
	"Answer nil if no intersect"
	| visibleArea |
	self area
		ifNil: [^ nil].
	^ self isOnHolder
		ifTrue: [visibleArea _ self area intersect: self holderArea.
			visibleArea hasPositiveExtent
				ifTrue: [visibleArea]]
		ifFalse: [self area]