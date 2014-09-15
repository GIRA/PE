translating
compileLoopMethod
	methods add: (String streamContents: [:stream |
		stream nextPutAll: 'loop
	| now |
	<tempTypes: #(CUnsignedLong)>
	now := self currentTick.
	'.
	self scriptSelectorsDo: [:selector || code |
		"Only control execution of scripts without arguments"
		(selector endsWith: ':')
			ifFalse: [
				((timers includes: currentMorph)
				and: [selector = #step])
					ifTrue: ["Timers step should execute on every tick"
						code := 'self {5}.']
					ifFalse: ["All other scripts should be controlled"
						code := '({1} and: [now - {2} > {3}])
								ifTrue: [{4} timesRepeat: [self {5}].
							{2} := now].' ].
				code := code
						format: {
							(self asLegalScriptFlag: selector).
							(self asLegalScriptLastTime: selector).
							(self delayOfScript: selector).
							(self frequencyOfScript: selector).
							(self asLegalName: selector)}.
				stream nextPutAll: code].
		]
	])