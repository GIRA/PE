support
pointForHolder: holderPoint at: aPoint 
	"Translating cordinate local to holder 
	holderPoint is a point that I am put"
	| rotateDirection standardized |
	rotateDirection _ self direction == #right
				ifFalse: [self direction == #down
						ifTrue: [#right]
						ifFalse: [self direction == #left
								ifTrue: [#pi]
								ifFalse: [self direction == #up
										ifTrue: [#left]]]].
	standardized _ aPoint + (0 @ -1).
	rotateDirection
		ifNotNil: [standardized _ standardized rotateBy: rotateDirection centerAt: 0 @ 0].
	^ standardized + holderPoint