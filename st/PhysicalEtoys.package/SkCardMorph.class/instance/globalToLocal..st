layout
globalToLocal: aPoint 
	"Transformation a position of cell"
	| normalized |
	normalized _ aPoint - self cellOrigin.
	model direction = #left
		ifTrue: [^ normalized * -1 + (0 @ 1)].
	model direction = #down
		ifTrue: [^ normalized transposed + (0 @ 1)].
	model direction = #up
		ifTrue: [^ normalized transposed * -1 + (0 @ 1)].
	^ normalized + (0 @ 1)