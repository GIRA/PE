initialize-release
initialize
	super initialize.
	digitalPins := self newDictionaryFrom: 2 to: 13 withAll: 0.
	analogPins := self newDictionaryFrom: 0 to: 5 withAll: 0.
	queue := Queue new.
	argsToRead := -1