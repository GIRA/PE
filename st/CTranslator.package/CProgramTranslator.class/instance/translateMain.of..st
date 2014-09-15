translating
translateMain: mainSelector of: aCProgram
	markedMethods := Set new.
	[(self translateMethod: mainSelector of: aCProgram)
		isMain: true]
		on: CInstVarToImplement do: [:notification |
			(program addStruct: notification struct)
				addVar: notification variable.
			notification resume].
	^ program