initializing
collectSlots
	"Adds all the slots and they respective types to the variables dictionary."
	variables := Dictionary new.
	self allMorphsDo: [:morph | | slots |
		slots := variables at: morph ifAbsentPut: [Dictionary new].
		morph assuredPlayer slotInfo 
			keysAndValuesDo: [:slotName :slotInfo | 
				slots at: slotName put: (slotInfo type -> (morph assuredPlayer instVarNamed: slotName))]]
