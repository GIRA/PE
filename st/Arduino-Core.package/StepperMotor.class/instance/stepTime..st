actions
stepTime: aNumber
	aNumber < 1 ifTrue: [^self error: 'Step time can''t be less than 1' translated].
	stepTime := aNumber.