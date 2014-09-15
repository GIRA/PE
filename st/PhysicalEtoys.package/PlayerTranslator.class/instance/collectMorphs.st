initializing
collectMorphs
	"Finds all posible morphs whose players I should translate"
	timers := OrderedCollection new.
	World allMorphsDo: [:morph |
		"TimerMorphs"
		(morph isKindOf: TimerMorph)
			ifTrue: [timers add: morph]]