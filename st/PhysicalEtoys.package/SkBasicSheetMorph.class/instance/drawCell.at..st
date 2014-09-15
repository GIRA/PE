drawing
drawCell: aCanvas at: aPoint 
	(aPoint x isZero
			or: [aPoint y isZero])
		ifTrue: [^ self
				drawLabel: aCanvas
				string: (self labelAt: aPoint)
				at: aPoint].
	self flag: #TODO.
	self
		drawContents: ((showFormula notNil
					and: [showFormula])
				ifTrue: [model textAt: aPoint]
				ifFalse: [ showFormula _ false.model at: aPoint.])
		on: aCanvas
		at: aPoint