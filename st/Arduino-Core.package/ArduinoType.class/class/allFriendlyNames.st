accessing types
allFriendlyNames
	^ types inject: #() into: [:subTotal :next | subTotal, next friendlyNames]