accessing
stepList
	^ self
		at: 'StepList'
		ifAbsent: [| list | 
			list _ SkCollection new.
			self at: 'StepList' put: list.
			list parent: self.
			World setProperty: #SkStepList toValue: list.
			list]