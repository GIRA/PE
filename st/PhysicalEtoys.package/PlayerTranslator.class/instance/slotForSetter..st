accessing
slotForSetter: setterSelector
	"Returns the slot accessed by these selector"
	| slotName |
	slotName := currentMorph assuredPlayer slotInfo keys
				detect: [:slot | (Utilities setterSelectorFor: slot)
						= setterSelector]
				ifNone: [nil].
	self assert: slotName notNil.
	^ self asLegalName: slotName