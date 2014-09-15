private
createOffset: aPoint 
	| x y |
	x _ ((aPoint x min: 0)
				to: (aPoint x max: 0) - 1)
				inject: 0
				into: [:sub :next | sub + (grid cellExtentAt: next @ 0) x + border].
	x _ aPoint x negative
				ifTrue: [0 - x]
				ifFalse: [x].
	y _ ((aPoint y min: 0)
				to: (aPoint y max: 0) - 1)
				inject: 0
				into: [:sub :next | sub + (grid cellExtentAt: 0 @ next) y + border].
	y _ aPoint y negative
				ifTrue: [0 - y]
				ifFalse: [y].
	^ x @ y