updating
referenceAt: aPoint 
	| finder |
	^ self hasCard
		ifTrue: [(self hasCard
					and: [self contents isInstance])
				ifTrue: [(self contents referenceAt: aPoint) asSet]
				ifFalse: [#()]]
		ifFalse: [finder _ SkRefFinder new.
			self resolveOn: finder at: aPoint.
			finder keys]