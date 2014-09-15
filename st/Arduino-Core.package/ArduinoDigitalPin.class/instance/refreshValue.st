value
refreshValue
	mode isOutput
		ifTrue: [mode
				refreshValue: value
				on: number
				using: self protocol]