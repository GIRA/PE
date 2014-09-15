evaluating
resolveOn: holder 
	holder
		at: observer
		put: (rule
				valueWithArguments: (subjects
						collect: [:each | holder at: each]))