*ctranslator
printShowingAtMostDecimalPlaces: placesDesired
	| str count |
	str := self printShowingDecimalPlaces: placesDesired.
	"Now remove trailing zeros"
	count := 0.
	str reverseDo: [:chr |
		chr caseOf: {
			[$0] -> [count := count + 1].
			[$.] -> [^ str allButLast: count - 1]
		} otherwise: [^ str allButLast: count]].
	^ str