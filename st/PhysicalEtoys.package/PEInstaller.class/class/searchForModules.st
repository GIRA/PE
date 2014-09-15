system startup
searchForModules
	^ PEModule defaultDirectory fileNames
		select: [:each | (PEModule isValidName: each)
			and: [(self isAlreadyInstalled: each) not]]
		thenCollect: [:each | PEModule named: each]