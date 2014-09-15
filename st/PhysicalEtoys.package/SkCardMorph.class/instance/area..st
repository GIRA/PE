accessing
area: aRectangle 
	"area corner is determined by size and direction"
	self
		cellOrigin: ((#(#right #down ) includes: model direction)
				ifTrue: [aRectangle origin]
				ifFalse: [model direction = #left
						ifTrue: [aRectangle origin + (self size @ 0)]
						ifFalse: [aRectangle origin + (0 @ self size)]]).
	self isHorizonal
		ifTrue: [self size: aRectangle width - 1]
		ifFalse: [self size: aRectangle height - 1].
	self changed