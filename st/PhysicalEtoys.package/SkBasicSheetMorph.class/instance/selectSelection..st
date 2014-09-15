action
selectSelection: aPoint 
	"Select at event position"
	aPoint
		ifNil: [^ self].
	self
		selection: (aPoint extent: 1 @ 1).
	self changed