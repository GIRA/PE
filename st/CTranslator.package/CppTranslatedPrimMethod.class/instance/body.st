as yet unclassified
body
	self flag: #Richo. "This is a hack. We should generate the body with 'self' instead of 'this' from the start"	
	^ super body copyReplaceTokens: 'this' with: 'self'