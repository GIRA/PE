initializing
collectScriptSelectors
	"Collects all selectors corresponding to a script in a dictionary whose keys are the morphs owning the methods.
	Rejects getters and setters and script whose parameters are invalid"
	|   isValid |
	scriptSelectors := Dictionary new.
	isValid := [:morph :selector |
		(selector last ~= $:)
		or: [#(Number Boolean String) includes:
			(morph assuredPlayer class scripts at: selector)
				argumentVariables first variableType]].
	self
		allMorphsDo: [:morph | 
			| selectors | 
			selectors := scriptSelectors
						at: morph
						ifAbsentPut: [Set new].
			selectors
				addAll: (morph assuredPlayer class selectors
						reject: [:selector | ((getterSelectors at: morph)
									includes: selector)
								or: [((setterSelectors at: morph)
										includes: selector)
								or: [(isValid value: morph value: selector) not]]])].
	"Add the timers #action and #step scripts if not present already"
	timers do: [:timer || scripts |
		scripts := scriptSelectors at: timer.
		(scripts includes: #action) ifFalse: [scripts add: #action].
		(scripts includes: #step) ifFalse: [scripts add: #step]]