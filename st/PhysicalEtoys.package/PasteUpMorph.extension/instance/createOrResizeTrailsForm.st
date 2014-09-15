*PhysicalEtoys-skeleton-base-pentrail
createOrResizeTrailsForm
	"If necessary, create a new turtleTrailsForm or resize the existing one to fill my bounds. On return, turtleTrailsForm exists and is the correct size."

	| newForm |
	turtleTrailsForm ifNil:
		["create new TrailsForm if needed"
		turtleTrailsForm _ Form extent: self extent depth: 32.
		turtleTrailsForm fillColor: self color.
		turtlePen _ nil].

	turtleTrailsForm extent = self extent ifFalse:
		["resize TrailsForm if my size has changed"
		newForm _ Form extent: self extent depth: 32.
		newForm fillColor: self color.
		newForm copy: self bounds from: turtleTrailsForm
					to: 0@0 rule: Form paint.
		turtleTrailsForm _ newForm.
		turtlePen _ nil].

	"Recreate Pen for this form"
	turtlePen ifNil: [turtlePen _ Pen newOnForm: turtleTrailsForm.
					turtlePen combinationRule: Form blend].