root
isEtoysProjectDirty: aProject
	"It tries to ensure this project can be saved in the squeakland showcase."
	"Checks if the given project contains any morph instance of a class
	belonging to the Physical Etoys packages."
	"It's probably not the best way of testing, but I don't know any better
	for now"
	| packages morphClasses |
	packages := PhysicalEtoys packages
		collect: [:each | PackageInfo named: each].
	morphClasses := packages inject: #() into: [:subTotal :next |
		subTotal, 
		(next classes select: [:each | each inheritsFrom: Morph])].
	aProject world allMorphsDo: [:morph |
		(morphClasses 
			detect: [:each | morph isKindOf: each] 
			ifNone: [nil])
			ifNotNil: [^ true]].
	^ false
