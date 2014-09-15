iterating
variablesDo: aBlock 
	"Iterates over the variables dictionary taking care of setting the current morph"
	variables
		keysAndValuesDo: [:morph :vars | self
				withCurrentMorph: morph
				do: [vars keysAndValuesDo: aBlock]] 