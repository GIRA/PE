stepping
moveArrow
	arrow y: arrow y + arrowSpeed.
	arrow obtrudesBeyondContainer
		ifTrue: [arrowSpeed := arrowSpeed * -1]
