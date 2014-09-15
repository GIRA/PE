structure
adopt: aSkObject 
	(self findName: aSkObject ruleName)
			= aSkObject rule
		ifTrue: [^ self].
	self uniqueNameAt: aSkObject ruleName put: aSkObject