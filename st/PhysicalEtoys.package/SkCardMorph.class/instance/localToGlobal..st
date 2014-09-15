layout
localToGlobal: aPoint 
	| normalized |
	normalized _ aPoint + (0 @ -1).
	model direction = #left
		ifTrue: [^ normalized * -1 + self cellOrigin].
	model direction = #down
		ifTrue: [^ normalized transposed + self cellOrigin].
	model direction = #up
		ifTrue: [^ normalized transposed * -1 + self cellOrigin].
	^ normalized + self cellOrigin