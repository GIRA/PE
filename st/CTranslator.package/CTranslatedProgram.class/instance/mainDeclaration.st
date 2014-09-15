accessing
mainDeclaration
	^ (self mainImplementation copyUpTo: Character cr) , ';'