*PhysicalEtoys-skeleton-base-sheet
runStepMethods
	"dirty hack"
	worldState runStepMethodsIn: self.
	(self valueOfProperty: #SkStepList)
		ifNotNilDo: [:m | m
				do: [:s | s safetyResolve]]