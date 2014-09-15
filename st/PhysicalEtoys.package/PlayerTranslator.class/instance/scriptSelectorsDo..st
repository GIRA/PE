iterating
scriptSelectorsDo: aBlock 
	"Iterates over the scriptSelectors dictionary taking care of setting the current morph"
	scriptSelectors
		keysAndValuesDo: [:morph :selectors | self
				withCurrentMorph: morph
				do: [selectors do: aBlock]] 