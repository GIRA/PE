updating
resolveCardOn: sheet at: aPoint 
	| ruleCase privateCase |
	ruleCase _ self contents.
	privateCase _ (sheet assuredCellAt: aPoint) privateContents.
	ruleCase = sheet
		ifTrue: [^ self].
	(privateCase isSkObject
			and: [ruleCase rule = privateCase rule])
		ifFalse: [privateCase _ block value: sheet value: aPoint.
			sheet at: aPoint put: privateCase.
			privateCase holder: sheet at: aPoint.
			self changed: #cardList].
	privateCase resolveOn: sheet