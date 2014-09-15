initialization
initializeArgs: aNumber 
	self initializeArgs.
	args _ Array new: aNumber.
	args
		withIndexDo: [:each :index | 
			| cell | 
			cell _ SkValueCell new.
			cell modelAddDependent: self.
			args at: index put: cell]