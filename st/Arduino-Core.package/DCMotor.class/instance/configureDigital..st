configuring
configureDigital: aPin
	| index mode |
	index := pins indexOf: aPin ifAbsent: [^ self error].
	mode := index caseOf: {
		[1] -> [OutputMode].
		[2] -> [OutputMode].
		[3] -> [PwmMode]}.
	aPin mode: mode new;
		value: 0