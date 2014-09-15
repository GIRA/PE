initializing
collectGetterSelectors
	"Collects all selectors corresponding to a slot getter in a dictionary whose keys are the morphs owning the slot"
	getterSelectors := Dictionary new.
	self allMorphsDo: [:morph | | selectors |
		selectors := getterSelectors at: morph ifAbsentPut: [OrderedCollection new].
		selectors addAll: (morph assuredPlayer slotInfo keys collect: [:selector | Utilities getterSelectorFor: selector])].