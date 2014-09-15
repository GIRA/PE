initialize-release
newDictionaryFrom: start to: stop withAll: value
	| dict |
	dict := Dictionary new.
	start to: stop do: [:each |
		dict at: each put: value].
	^ dict
