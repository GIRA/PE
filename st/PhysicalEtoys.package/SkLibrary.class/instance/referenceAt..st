arg accessing
referenceAt: aPoint 
	"Answer the dependents object's point"
	^ self argPositions
		collect: [:each | self pointForHolder: aPoint at: each]