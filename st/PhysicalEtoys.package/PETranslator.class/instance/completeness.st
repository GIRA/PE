accessing
completeness
	"It counts the number of translations differing from the original and returns
	it divided by the total number of translations.
	It's not really accurate but it can give some amount of information on the
	progress of some languages."
	| cont |
	LocaleID current isoString = 'en'
		ifTrue: [^ 1.0].
	cont := 0.
	translations keysAndValuesDo: [:key :value |
		key ~= value ifTrue: [cont := cont + 1]].
	^ 	cont / translations size * 1.0