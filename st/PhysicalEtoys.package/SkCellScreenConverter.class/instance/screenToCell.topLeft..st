accessing
screenToCell: aPoint topLeft: topLeft 
	"Convert screen position to cell position"
	| x y right left bottom top |
	aPoint x < topLeft x
		ifTrue: [x _ self extent left - 1.
			left _ topLeft x.
			[(left _ left - (grid cellExtentAt: x @ 0) x + border) > aPoint x]
				whileTrue: [x _ x - 1]]
		ifFalse: [x _ self extent left.
			right _ topLeft x.
			[(right _ right + (grid cellExtentAt: x @ 0) x + border) < aPoint x]
				whileTrue: [x _ x + 1]].
	aPoint y < topLeft y
		ifTrue: [y _ self extent top - 1.
			top _ topLeft y.
			[(top _ top - (grid cellExtentAt: 0 @ y) y + border) > aPoint y]
				whileTrue: [y _ y - 1]]
		ifFalse: [y _ self extent top.
			bottom _ topLeft y.
			[(bottom _ bottom + (grid cellExtentAt: 0 @ y) y + border) < aPoint y]
				whileTrue: [y _ y + 1]].
	^ x @ y