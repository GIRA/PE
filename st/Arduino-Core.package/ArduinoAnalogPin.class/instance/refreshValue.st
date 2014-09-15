value
refreshValue
	mode isOutput
		ifTrue: [mode
				refreshValue: value
				on: 14 + number
				using: self protocol]