updating
startStepping
	| stepList |
	self wantsSteps
		ifFalse: [^ self].
	self attachProject.
	stepList _ SkProject current stepList.
	(stepList includes: self)
		ifFalse: [stepList add: self]