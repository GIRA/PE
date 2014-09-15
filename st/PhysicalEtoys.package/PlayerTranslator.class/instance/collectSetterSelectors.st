initializing
collectSetterSelectors
	"Collects all selectors corresponding to a slot setter in a dictionary whose keys are the morphs owning the slot"
	setterSelectors := Dictionary new.
	self allMorphsDo: [:morph | | selectors |
		selectors := setterSelectors at: morph ifAbsentPut: [OrderedCollection new].
		selectors addAll: (morph assuredPlayer slotInfo keys collect: [:selector | Utilities setterSelectorFor: selector])].
