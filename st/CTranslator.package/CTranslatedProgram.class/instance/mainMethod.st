accessing
mainMethod
	^ self methods detect: [:each | each isMain]