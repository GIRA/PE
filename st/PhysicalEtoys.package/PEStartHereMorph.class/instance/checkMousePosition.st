stepping
checkMousePosition
	"If the mouse moves far from its starting position, delete the morph"
	| dist allowed |
	mouseStart ifNil: [^ self].
	dist := mousePos dist: mouseStart.
	allowed :=(World height min: World width) * 0.25.
	dist > allowed
		ifTrue: [self delete]