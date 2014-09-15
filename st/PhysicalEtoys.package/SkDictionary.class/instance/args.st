accessing
args
	^ args
		ifNil: [self initializeArgs]