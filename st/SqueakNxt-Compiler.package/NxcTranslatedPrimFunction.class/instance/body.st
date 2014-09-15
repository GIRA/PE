accessing
body
	self flag: #Richo. "This is a hack. We should generate the body with 'self' instead of '_self' from the start"	
	^ super body copyReplaceTokens: '_self' with: 'self'