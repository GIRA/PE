accessing
externalName
	^ self model
		ifNotNilDo: [:m | "name can be nil"
			m ruleName asString]