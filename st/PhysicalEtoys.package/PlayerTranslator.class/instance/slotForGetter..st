accessing
slotForGetter: getterSelector
	"Returns the slot accessed by these selector"
	| slotName |
	slotName := currentMorph assuredPlayer slotInfo keys
				detect: [:slot | (Utilities getterSelectorFor: slot)
						= getterSelector]
				ifNone: [nil].
	self assert: slotName notNil.
	^ self asLegalName: slotName